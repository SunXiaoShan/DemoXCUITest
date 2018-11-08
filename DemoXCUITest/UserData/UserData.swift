//
//  UserData.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/10/26.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class UserData {
    static let shared = UserData()
    
    private init() {
        print("UserData init...")
    }
    
    func getUserId() -> String {
        let dateFromTimeStamp = Int(Date.init().timeIntervalSince1970)
        return String(dateFromTimeStamp)
    }
    
    func getUserName() -> String {
        return "Hello world!"
    }
    
    func getUserPhoneNumber() -> String {
        return "09xx-123-123"
    }
    
    func isLogin() -> Bool {
        return (UserDefaults.standard.object(forKey: "isLogin") != nil)
    }
    
    func removeUserData() {
        UserDefaults.standard.removeObject(forKey: "isLogin")
        UserDefaults.standard.synchronize()
    }
    
    func setUserData() {
        UserDefaults.standard.set(true, forKey: "isLogin")
        UserDefaults.standard.synchronize()
    }
}
