import UIKit
import Flutter
import GoogleMaps 

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  // override func application(
  //   _ application: UIApplication,
  //   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  // ) -> Bool {
  //   // TODO: Add your Google Maps API key
  //   GMSServices.provideAPIKey("AIzaSyDr0HrfsDnx5I_N6YGybjRWI1QS_BfvmQg")

  //   GeneratedPluginRegistrant.register(with: self)
  //   return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  // }

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // TODO: Add your Google Maps API key
    GMSServices.provideAPIKey("AIzaSyDr0HrfsDnx5I_N6YGybjRWI1QS_BfvmQg")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

