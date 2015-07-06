//
//  AppDelegate.swift
//  SwiftCallBack
//
//  Created by Franks, Kent on 7/6/15.
//  Copyright (c) 2015 Franks, Kent. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        var someStackSetup: SomeStackSetup = SomeStackSetup() {(response) -> Void in
            if response == "responseString" {
                self.completeSetup()
            } else {
                println(">>>>> response is not what we expected, abort setup <<<<<")
            }
        }
        let viewController: ViewController = self.window!.rootViewController as! ViewController
        viewController.someStackSetup = someStackSetup
        
        return true
    }
    
    func completeSetup() {
        println(">>>>> AppDelegate:completeSetup() <<<<<")
    }
    
}

