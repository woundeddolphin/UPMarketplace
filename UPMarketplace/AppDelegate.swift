//
//  AppDelegate.swift
//  UPMarketplace
//
//  Created by John Liedtke on 10/9/14.
//  Copyright (c) 2014 UP Marketplace. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Parse initialization
        Parse.setApplicationId("6ZVQsgQNW5KpO6H5os6JxGOxZAFCEdfLua2T3PAm",
            clientKey: "5bsP9MYcxGGU1bZkKC2ovgySNyLkCk5223irCGG0")
        
        // If you would like all objects to be private by default, remove this line.
        var defaultACL = PFACL.ACL()
        defaultACL.setPublicReadAccess(true)
        PFACL.setDefaultACL(defaultACL, withAccessForCurrentUser: true)
        
        // Parse Push Notifications
//        var userNotificationTypes: UIUserNotificationType = (UIUserNotificationType.Alert |
//            UIUserNotificationType.Badge |
//            UIUserNotificationType.Sound)
//        var settings: UIUserNotificationSettings = UIUserNotificationSettings(forTypes: userNotificationTypes, categories: nil)
//        
//        application.registerUserNotificationSettings(settings)
//        application.registerForRemoteNotifications()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

