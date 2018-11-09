//
//  LibraryDetailPage.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/11/9.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit
import XCTest

class LibraryDetailPage: Page {
    lazy var youtubeView = app.webViews.element(boundBy: 0)
    
    func dismissYoutubeView() -> Self {
        let element = app.webViews.element
        guard waitForElementToAppear(element) else {
            XCTFail()
            return self
        }
        element.tap()
        element.tap()
        element.swipeDown()
        return self
    }
    
    func playYoutubeVideo() -> Self {
        
        let element = youtubeView/*@START_MENU_TOKEN@*/.buttons["Play"]/*[[".otherElements[\"YouTube video player\"]",".otherElements[\"YouTube Video Player\"].buttons[\"Play\"]",".buttons[\"Play\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        guard waitForElementToAppear(element) else {
            XCTFail()
            return self
        }
        element.tap()
        return self
    }
    
    func waitLoadYoutubeData() -> Self {
        sleep(4)
        return self
    }
    
    func waitVideoReload() -> Self {
        sleep(4)
        return self
    }
    
    @discardableResult func actionOKButton() -> Self {
        let element = app.buttons["OK"]
        guard waitForElementToAppear(element) else {
            XCTFail()
            return self
        }
        element.tap()
        return self
    }
    
    
}
