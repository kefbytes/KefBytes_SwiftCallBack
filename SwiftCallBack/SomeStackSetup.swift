//
//  SomeStackSetup.swift
//  SwiftCallBack
//
//  Created by Franks, Kent on 7/6/15.
//  Copyright (c) 2015 Franks, Kent. All rights reserved.
//

import Foundation

class SomeStackSetup {
    
    init (handleSuccessfulCompletion: (String) -> Void) {
        // do something and if successful call handleSuccessfulCompletion
        handleSuccessfulCompletion("fail")
    }
    
    func testAnotherCallback (name: String, whenDone: (String) -> Void) {
        print("🤖 SomeStackSetup.testAnotherCallback() name = \(name)")
        whenDone("Hannah")
    }
    
}
