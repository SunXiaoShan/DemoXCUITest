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
        
        let firstPage = PeoplePage.init(XCUIApplication())
        firstPage
            .on(page: LibraryPage.self)
            .switchToLibrary()
            .tapTableViewCell(2)
            .actionPlayButton(2)
            .waitForChangView(0)
            
            .on(page: LibraryDetailPage.self)
            .waitLoadYoutubeData()
            // .playYoutubeVideo()
            // .waitVideoReload()
            .dismissYoutubeView()
            .actionOKButton()
            .waitForChangView(2)
            
            .on(page: LibraryPage.self)
            .tapTableViewCell(0)
            .actionPlayButton(0)

            .on(page: LibraryDetailPage.self)
            .waitLoadYoutubeData()
        //   .playYoutubeVideo()
        //   .waitVideoReload()
            .dismissYoutubeView()
            .actionOKButton()
            
            .on(page: LibraryPage.self)
            .waitForChangView(0)
            
            .on(page: PeoplePage.self)
            .waitForChangView(0)
            .switchToPeople()
            .swipeDownTableView()
            .swipeDownTableView()
            .swipeUpTableView()
        
            .on(page: SettingPage.self)
            .switchToSetting()
            .waitForChangView(0)
            .actionSignOut()
            .actionSignIn()
            
            .on(page: SignInPage.self)
            .waitForChangView(1)
            .textAccount("Hello World!!")
            .hideKeyboard()
            .textPassword("This is Auto-test")
            .hideKeyboard()
            .actionSignIn()
        
        sleep(4)
        
        
        
//        let library = LibraryPage.init(XCUIApplication())
//        library.switchToLibrary()
//               .tapTableViewCell(2)
//               .actionPlayButton(2)
//        
//
//        LibraryDetailPage.init(XCUIApplication())
//        
//
//        sleep(2)
//        
//        library.tapTableViewCell(0)
//               .actionPlayButton(0)
//        
//        LibraryDetailPage.init(XCUIApplication())
//                      .waitLoadYoutubeData()
////                      .playYoutubeVideo()
////                      .waitVideoReload()
//                      .dismissYoutubeView()
//                      .actionOKButton()
//
//        sleep(4)
        
        
    }
    
    func testTe() {
        
        
        let app = XCUIApplication()
        app.tabBars.buttons["Setting"].tap()
        app.buttons["Sign Out"].tap()
        app.buttons["Sign In"].tap()
        app.textFields["Account / Email"].tap()
        
        let fKey = app/*@START_MENU_TOKEN@*/.keys["f"]/*[[".keyboards.keys[\"f\"]",".keys[\"f\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        fKey.tap()
        fKey.tap()
        fKey.tap()
        fKey.tap()
        fKey.tap()
        app.textFields["Password"].tap()
        fKey.tap()
        
        let dKey = app/*@START_MENU_TOKEN@*/.keys["d"]/*[[".keyboards.keys[\"d\"]",".keys[\"d\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        dKey.tap()
        dKey.tap()
        fKey.tap()
        fKey.tap()
        fKey.tap()
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1)
        element.children(matching: .other).element.children(matching: .other).element.tap()
        element.buttons["Sign In"].tap()


        
    }
    
   
}
