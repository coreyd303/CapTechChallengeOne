//
//  AppDelegate.swift
//  CapTech Assigment 1
//
//  Created by Corey Davis on 6/22/17.
//  Copyright © 2017 Corey Davis. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    resetStateIfUITesting()

    var dateList = [Date]()
    let loadDate = Date()
    if let currentList = UserDefaults.standard.object(forKey: "dateList") as? Array<Date> {
        dateList = currentList
        dateList.append(loadDate)
    } else {
        dateList.append(loadDate)
    }


    UserDefaults.standard.set(dateList, forKey: "dateList")

    return true
  }

  private func resetStateIfUITesting() {
    if ProcessInfo.processInfo.arguments.contains("UI-Testing") {
      UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
    }
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }

}

