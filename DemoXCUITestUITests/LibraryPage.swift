//
//  LibraryPage.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/11/8.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit
import XCTest

class LibraryPage: Page {
    lazy var libraryTab = app.tabBars.buttons["Library"]
    var selectIndex: Int = 0
    
    func switchToLibrary() -> Self {
        libraryTab.tap()
        return self
    }
    
    func getTableViewCell(_ index: Int) -> XCUIElement {
        let table = app.tables.element(boundBy: 0)
        let cell = table.cells.element(boundBy: index)
        guard waitForElementToAppear(cell) else {
            XCTFail()
            return cell
        }
        return cell
    }
    
    func tapTableViewCell(_ index: Int) -> Self {
        getTableViewCell(index).tap()
        return self
    }
    
    @discardableResult func actionPlayButton(_ index: Int) -> Self {
        let element = getTableViewCell(index).buttons["Button"]
        guard waitForElementToAppear(element) else {
            XCTFail()
            return self
        }
        
        element.tap()
        return self
    }
}
