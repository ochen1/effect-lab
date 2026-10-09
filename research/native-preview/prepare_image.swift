import Foundation
import ImageIO
import UniformTypeIdentifiers
let sourceURL=URL(fileURLWithPath:CommandLine.arguments[1])
let outputURL=URL(fileURLWithPath:CommandLine.arguments[2])
guard let source=CGImageSourceCreateWithURL(sourceURL as CFURL,nil), let image=CGImageSourceCreateThumbnailAtIndex(source,0,[kCGImageSourceCreateThumbnailFromImageAlways:true,kCGImageSourceCreateThumbnailWithTransform:true,kCGImageSourceThumbnailMaxPixelSize:(CommandLine.arguments.count > 3 ? Int(CommandLine.arguments[3])! : 960)] as CFDictionary), let destination=CGImageDestinationCreateWithURL(outputURL as CFURL,(outputURL.pathExtension.lowercased() == "png" ? UTType.png.identifier : UTType.jpeg.identifier) as CFString,1,nil) else { fatalError("Image preparation failed") }
CGImageDestinationAddImage(destination,image,[kCGImageDestinationLossyCompressionQuality:1.0] as CFDictionary)
guard CGImageDestinationFinalize(destination) else {fatalError("Write failed")}
print("Prepared upright image: \(image.width) x \(image.height)")
