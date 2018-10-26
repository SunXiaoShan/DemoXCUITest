//
//  AppDelegate.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/10/26.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // create tabbar controller
        let mainTabBarController = MainTabBarViewController()
        mainTabBarController.tabBar.backgroundColor = UIColor.clear
        
        let imageSize = CGSize(width: 24, height: 24)
        
        // create library controller
        let libraryImage = Utils.resizeImage(image: UIImage(named: "agenda")!, targetSize: imageSize)
        let libraryViewController = LibraryViewController()
        libraryViewController.tabBarItem = UITabBarItem(
            title: "Library",
            image: libraryImage,
            selectedImage: libraryImage)
        libraryViewController.tabBarItem.tag = 100
        
        // create people controller
        let peopleImage = Utils.resizeImage(image: UIImage(named: "myspace")!, targetSize: imageSize)
        let peopleViewController = PeopleViewController()
        peopleViewController.tabBarItem = UITabBarItem(
            title: "People",
            image: peopleImage,
            selectedImage: peopleImage)
        peopleViewController.tabBarItem.tag = 200
        
        // create setting controller
        let settingImage = Utils.resizeImage(image: UIImage(named: "configuration")!, targetSize: imageSize)
        let settingViewController = SettingViewController()
        settingViewController.tabBarItem = UITabBarItem(
            title: "Setting",
            image: settingImage,
            selectedImage: settingImage)
        settingViewController.tabBarItem.tag = 300
        
        // insert controllers to tabbarcontroller
        mainTabBarController.viewControllers = [
            libraryViewController,
            peopleViewController,
            settingViewController
        ]
        
        // default select index
        mainTabBarController.selectedIndex = 1
        
        // set up window
        self.window = UIWindow(frame:UIScreen.main.bounds)
        self.window!.backgroundColor = UIColor.white
        self.window!.rootViewController = mainTabBarController
        self.window!.makeKeyAndVisible()
    
        return true
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

