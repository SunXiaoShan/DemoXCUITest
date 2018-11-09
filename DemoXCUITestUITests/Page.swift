//
//  Page.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/11/8.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit
import XCTest

class Page {
    open var app:XCUIApplication
    required init(_ app: XCUIApplication) {
        self.app = app
    }
    
    func waitForElementToAppear(_ element: XCUIElement) -> Bool {
        let expectation = XCTKVOExpectation(keyPath: "exists",
                                            object: element,
                                            expectedValue: true)
        
        let result = XCTWaiter().wait(for: [expectation], timeout: 5)
        return result == .completed
    }
    
    func waitForChangView(_ time:Int = 0) -> Self {
        sleep(UInt32(time))
        return self
    }
    
    func on<T: Page>(page: T.Type) -> T {
        return page.init(app)
    }
}
