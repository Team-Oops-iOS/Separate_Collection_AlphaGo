//
//  AppDelegate.swift
//  SeparateCollectionAlphaGo
//
//  Created by 이숭인 on 2021/12/11.
//

import UIKit
import NMapsMap

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 15, *) {
            let appearanceTB = UITabBarAppearance()
            let tabBar = UITabBar()
            appearanceTB.configureWithOpaqueBackground()
            appearanceTB.backgroundColor = .systemBackground
            tabBar.standardAppearance = appearanceTB;
            UITabBar.appearance().scrollEdgeAppearance = appearanceTB
            var clientId = Bundle.main.object(forInfoDictionaryKey: "NMFClientId")! as? String
            clientId = clientId?.trimmingCharacters(in: ["\""])
            NMFAuthManager.shared().clientId = clientId
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

