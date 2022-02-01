import Flutter
import UIKit

public class SwiftCopyImageToClipboardPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "copy_image_to_clipboard", binaryMessenger: registrar.messenger())
    let instance = SwiftCopyImageToClipboardPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }


  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
//      print("inside")
      switch call.method{
      case "copyImage":
          print("inside method")
          //inside copyImage method
          ////let args = call.arguments as? UInt8
          //print("saved args")
          //get flutter data as FlutterStandardTypedData from call
          let myFlutterData: FlutterStandardTypedData = call.arguments as! FlutterStandardTypedData
          //make data object from myFlutterData
          let myData = Data(myFlutterData.data)
          //make uint8 list from myData
          let myUInt8bytes: [UInt8] = [UInt8](myData)
          print(myUInt8bytes)
          //print(call.arguments)

          ////let data = NSData(bytes: [args], length: 2)
          //print("let data")
          // let data = Data(args)
          //make uiimage from myData
          let image = UIImage(data: myData)
          print("data as Data")
          //copy image to clipboard
          UIPasteboard.general.image = image
          print("data copied")
          
          
      default : result(FlutterMethodNotImplemented)
      }
    result("iOS " + UIDevice.current.systemVersion)
  }
}
