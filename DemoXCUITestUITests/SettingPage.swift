//
//  SettingPage.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/11/9.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class SettingPage: Page {
    lazy var settingTab = app.tabBars.buttons["Setting"]
    
    func switchToSetting() -> Self {
        settingTab.tap()
        snapshot("switch to setting page")
        return self
    }
    
    func actionSignOut() -> Self {
        let element = app.buttons["Sign Out"]
        element.tap()
        snapshot("sign out")
        return self
    }
    
    func actionSignIn() -> Self {
        let element = app.buttons["Sign In"]
        element.tap()
        snapshot("sign in")
        return self
    }
}
