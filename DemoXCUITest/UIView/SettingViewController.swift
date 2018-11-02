//
//  SettingViewController.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/10/26.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var mainButton: UIButton!
    
    struct CellData {
        var title: String
        var detail: String
    }
    
    lazy var dataList:[CellData] = getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (UserData.shared.isLogin() == false) {
            dataList = []
        }
        
        mainTableView.dataSource = self
        mainTableView.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func actionButtonClick(_ sender: Any) {
        if (UserData.shared.isLogin() == false) {
            UserData.shared.setUserData()
            dataList = getUserData()
        } else {
            UserData.shared.removeUserData()
            dataList = []
        }
        
        mainTableView.reloadData()
    }
}

extension SettingViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let data:CellData = dataList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell

        
        cell.label?.text = data.title
        cell.detailLabel?.text = data.detail
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}

extension SettingViewController:UITableViewDelegate {
    func getUserData() -> [CellData] {
        return [
            CellData( title: "ID number", detail: UserData.shared.getUserId() ),
            CellData( title: "User name", detail: UserData.shared.getUserName() ),
            CellData( title: "User phone number", detail: UserData.shared.getUserPhoneNumber() ),
        ]
    }
}
