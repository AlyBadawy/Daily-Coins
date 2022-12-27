//
//  Daily_CoinsApp.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct Daily_CoinsApp: App {
  
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  // register app delegate for Firebase setup
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
