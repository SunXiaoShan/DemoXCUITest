//
//  DemoXCUITestUITests.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/10/26.
//  Copyright © 2018 Phineas. All rights reserved.
//

import XCTest


class DemoXCUITestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        app.tabBars.buttons["Library"].tap()
        
        let tablesQuery = app.tables.element(boundBy: 0)
        XCTAssert(tablesQuery.cells.count > 3)
        
        let cell3 = tablesQuery.cells.element(boundBy: 3)
        
        
        
        tablesQuery.scroll
        scrollToElement(cell3)
        
//        let tablesQuery = app.tables
//        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Button"]/*[[".cells.buttons[\"Button\"]",".buttons[\"Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
//
//        let button = tablesQuery.cells.containing(.image, identifier:"BigHero").buttons["Button"]
//        button/*@START_MENU_TOKEN@*/.press(forDuration: 0.8);/*[[".tap()",".press(forDuration: 0.8);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        button.swipeUp()
//        button.swipeUp()
//
//        let button2 = tablesQuery.cells.containing(.image, identifier:"brave").buttons["Button"]
//        button2.swipeUp()
//        button2.tap()
       

        

        
     
        
    }

}
