//
//  ViewController.swift
//  SwiftCallBack
//
//  Created by Franks, Kent on 7/6/15.
//  Copyright (c) 2015 Franks, Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var someStackSetup: SomeStackSetup!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        someStackSetup.testAnotherCallback(name: "Noah") {
            returnedValue -> Void in
            print("🤖 whenDone:returnedValue = \(returnedValue)")
        }
    }
}

