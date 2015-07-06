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
        someStackSetup.testAnotherCallback("Noah") {
            returnedValue -> Void in
            println(">>>>> whenDone:returnedValue = \(returnedValue) <<<<<")
        }
    }
}

