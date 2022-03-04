import UIKit
import Flutter
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    AppCenter.start(withAppSecret: "10fb0f5f-6ad9-4f11-85a5-5f4f0651b8bd", services:[
  Analytics.self,
  Crashes.self
])

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
