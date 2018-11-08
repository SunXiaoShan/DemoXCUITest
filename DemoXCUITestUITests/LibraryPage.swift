//
//  LibraryPage.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/11/8.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class LibraryPage: Page {
    lazy var libraryTab = app.tabBars.buttons["Library"]
    
    func switchToLibrary() {
        libraryTab.tap()
    }
}
