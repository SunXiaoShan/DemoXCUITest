//
//  SignInPage.swift
//  DemoXCUITestUITests
//
//  Created by Phineas.Huang on 2018/11/9.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class SignInPage: Page {
    lazy var textAccount = app.textFields["Account / Email"]
    lazy var textPassword = app.textFields["Password"]
    
    func textAccount(_ text:String) -> Self {
        textAccount.tap()
        
        app.typeText(text)
        return self
    }
    
    func textPassword(_ text:String) -> Self {
        textPassword.tap()
        
        app.typeText(text)
        return self
    }
    
    func hideKeyboard() -> Self {
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1)
        element.children(matching: .other).element.children(matching: .other).element.tap()
        return self
    }
    
    @discardableResult func actionSignIn() -> Self {
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1)
        element.buttons["Sign In"].tap()
        return self
    }
}
