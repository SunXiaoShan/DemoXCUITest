//
//  PeoplePage.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/11/9.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class PeoplePage: Page {
    lazy var peopleTab = app.tabBars.buttons["People"]
    
    func switchToPeople() -> Self {
        peopleTab.tap()
        snapshot("switch to people page")
        return self
    }
    
    func swipeUpTableView() -> Self {
        let table = app.tables.element(boundBy: 0)
        table.swipeUp()
        snapshot("swipe up page")
        return self
    }
    
    func swipeDownTableView() -> Self {
        let table = app.tables.element(boundBy: 0)
        table.swipeDown()
        snapshot("swipe down page")
        return self
    }

}
