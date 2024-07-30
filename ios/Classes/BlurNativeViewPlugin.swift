import Flutter
import UIKit

public class BlurNativeViewPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
         let factory = BlurUIViewFactory()
         registrar.register(factory, withId: "plugins.flutter.dev/blur_native")
     }
}
