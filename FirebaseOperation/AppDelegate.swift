//
//  AppDelegate.swift
//  FirebaseOperation
//
//  Created by JLM on 2019/6/19.
//  Copyright © 2019 JLM. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        Auth.auth().signInAnonymously() { (authResult, error) in
            // ...
        }
        let ref = Database.database().reference(fromURL: "https://supermarket-54c6b.firebaseio.com/")
        ref.child("conf").observe(.value) { (snapshot) in
            print(snapshot)
        }
        return true
    }
}

