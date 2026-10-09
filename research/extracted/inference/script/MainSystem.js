const { Amaz, Bach, BaseSystem } = require("./bach");
const cv = Amaz.JSWrapCV;

class MainSystem extends BaseSystem {
    constructor() {
        super();
    }

    doInit(alg) {
        this.doBaseInit(alg);
        let engine = this.computeEngine
        let model_key = alg.getParam("model_key");
        this.model = null;
        this.modelConfigs = {};
        if (this.gpu_mode) {
            this.inferencePipeline = null;
            this.inferenceTextures = null;
        } else {
            this.inferenceEngine = null;
            this.inferenceTensors = null;
        }

        this.model_key = model_key;
        console.log(`[doInit]: loading model ${model_key}`);
        alg.loadAlgorithmModel(model_key);
        if (this.gpu_mode && this.inferencePipeline == null) {
            console.log(`[doInit]: load gpu model failed, try cpu mode`);
            this.gpu_mode = false;
            alg.loadAlgorithmModel(model_key);
        }
        if (this.gpu_mode) {
            this.model = {
                pipeline: this.inferencePipeline,
                textures: this.inferenceTextures,
                gamma: this.gamma,
            };
            this.loader = new Bach.Compute.DataLoaderGpu(this.coreml_mode, engine);
            if (this.gamma != null) {
                this.head = new Bach.Compute.FlowGanHeadGpu(this, this.coreml_mode)
            } else {
                this.head = new Bach.Compute.GanHeadGpu(this, this.coreml_mode)
            }
        } else {
            this.model = {
                engine: this.inferenceEngine,
                tensors: this.inferenceTensors,
                gamma: this.gamma,
            };
            this.loader = new Bach.Compute.DataLoaderCpu();
            if (this.gamma != null) {
                this.head = new Bach.Compute.FlowGanHeadCpu(this)
            } else {
                this.head = new Bach.Compute.GanHeadCpu(this)
            }
        }
    }

    doDestroy() {
        console.log("doDestroy");
    }

    doApply(dirtyParams) {
        let filterKeySet = new Set([""]);
        let keySet = dirtyParams.getVectorKeys();
        for (let i = 0; i < keySet.size(); ++i) {
            let theKey = keySet.get(i);
            if (!filterKeySet.has(theKey)) continue;
            let theValue = dirtyParams.get(theKey);
            if (this.params[theKey] != theValue) {
                console.log(`[doApply]: ${theKey} changed`);
                this.params[theKey] = theValue;
            }
        }
    }

    getValidFaceCount(input, graphName) {
        let nhFaceCount = input.getNHImageTfmCount(
            graphName,
            this.faceAlignNode
        );
        //console.log(`[getValidFaceCount]: facecount: ${nhFaceCount}`);

        if (nhFaceCount == 0) return 0;
        return Math.min(nhFaceCount, this.params.face_count);
    }

    doExecute(nodeContext) {
        if (this.gpu_mode) {
            return this.doExecuteGpu(nodeContext);
        } else {
            return this.doExecuteCpu(nodeContext);
        }
    }

    doExecuteCpu(nodeContext) {
        if (this.inferenceEngine == null || !this.inferenceEngine.isReady()) {
            console.log(`[doExecuteCpu]: inference engine is not ready`);
            return 0x100
        }
        const DefaultGraph = nodeContext.graphName;
        let input = nodeContext.getInputResult();
        let faceCount = this.getValidFaceCount(input, DefaultGraph);
        if (faceCount == 0) return 0x81;

        let blitImage = input.getBlitImage(DefaultGraph, this.blitNode);
        let cameraImage = cv.Mat(blitImage);

        for (let i = 0; i < faceCount; ++i) {
            let infInTensors = this.inferenceTensors.inputs;
            let tfmInfo = input.getNHImageTfmInfo(DefaultGraph, this.faceAlignNode, i);
            this.loader.process(cameraImage, infInTensors[0], tfmInfo)
            this.inferenceEngine.setInputTensors(infInTensors);
            let errCode = this.inferenceEngine.inference();
            if (errCode != 0) {
                console.error(`[doExecuteCpu]: inference failed: ${errCode}`);
                return;
            }

            let infOutTensors = this.inferenceEngine.getOutputTensors();
            this.head.process(nodeContext, infOutTensors, i, this.gamma)
        }
    }

    doExecuteGpu(nodeContext) {
        if (this.inferencePipeline == null) return 0x100;
        const DefaultGraph = nodeContext.graphName;
        let engine = this.computeEngine;

        let cameraTex = nodeContext.getInputGPUTexture(engine, this.inputTextureNode);
        let input = nodeContext.getInputResult();
        let faceCount = this.getValidFaceCount(input, DefaultGraph);
        if (faceCount == 0) return 0x81;

        let blitImage = input.getBlitImage(DefaultGraph, this.blitNode);

        this.resizeInferenceTextures(faceCount);

        for (let i = 0; i < faceCount; ++i) {
            let infTexes = this.inferenceTextures[i];
            let infInTex0 = infTexes.inputs[0].texture;

            let tfmInfo = input.getNHImageTfmInfo(DefaultGraph, this.faceAlignNode, i);
            let dstSize = [blitImage.width - 0.5, blitImage.height - 0.5];
            this.loader.process(cameraTex, infInTex0, tfmInfo, dstSize)
            Bach.Compute.applyInferenceTextures(
                this.inferencePipeline,
                infTexes
            );
            if (this.platform == "Android" && this.syncBeforeInference) {
                infInTex0.syncToCPU();
            }
            let errCode = this.inferencePipeline.dispatch();
            if (errCode != 0) {
                console.error(`[doExecuteGpu]: inference failed: ${errCode}`);
                return;
            }
            
            let infOutTexes = infTexes.outputs;
            this.head.process(nodeContext, infOutTexes, i, this.gamma)
        }
    }
}

exports.MainSystem = MainSystem;
