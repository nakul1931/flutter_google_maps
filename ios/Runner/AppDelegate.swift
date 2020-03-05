import UIKit
import Flutter
import "GoogleMaps/GoogleMaps.h"

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    // Add the following line, with your API key
    GMSServices provideAPIKey: @"AIzaSyBqqW5pq28Qera8ScOykfyKpiIP5Cc0XAM"
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
