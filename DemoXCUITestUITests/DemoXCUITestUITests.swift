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
        let app = XCUIApplication()
        setupSnapshot(app)

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

        
    }
}
