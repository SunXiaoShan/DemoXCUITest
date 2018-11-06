//
//  PeopleViewController.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/10/26.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController {
    
    struct PersonData {
        var id: String
        var name: String
        var mobile: String?
        var nick: String?
        var email: String?
        var avatar: String?
    }
    
    lazy var peopleList:[PersonData] = [
        PersonData(  id: "1",
                   name: "王小明",
                   mobile: "09xx123123",
                   nick: "小明",
                   email: "ming01@gmail.com",
                   avatar: "man"
        ),
        PersonData(  id: "2",
                     name: "王小珍",
                     mobile: "09xx456456",
                     nick: "小珍",
                     email: "jing02@gmail.com",
                     avatar: "woman"
        ),
        PersonData(  id: "3",
                     name: "王小華",
                     mobile: "09xx145145",
                     nick: "小華",
                     email: "hwao03@gmail.com",
                     avatar: "man"
        ),
        PersonData(  id: "4",
                     name: "王小麗",
                     mobile: "09xx987987",
                     nick: "小麗",
                     email: "li04@gmail.com",
                     avatar: "woman"
        ),
        PersonData(  id: "5",
                     name: "王小古",
                     mobile: "09xx1276474",
                     nick: "小古",
                     email: "gu05@gmail.com",
                     avatar: "man"
        ),
        PersonData(  id: "6",
                     name: "王小美",
                     mobile: "09xx322333",
                     nick: "小美",
                     email: "may06@gmail.com",
                     avatar: "woman"
        ),
        PersonData(  id: "7",
                     name: "王小甄",
                     mobile: "09xx1276474",
                     nick: "小甄",
                     email: "chan07@gmail.com",
                     avatar: "woman"
        )
    ]
        
    

    @IBOutlet weak var mTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mTableView.dataSource = self
        mTableView.delegate = self

        // Do any additional setup after loading the view.
    }

}

extension PeopleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cellIdentifier = "PeopleTableViewCell"
        let data:PersonData = peopleList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PeopleTableViewCell
        
        cell.labelName.text = data.name
        cell.labelEmail.text = data.email
        cell.labelNick.text = data.nick
        cell.labelMobile.text = data.mobile
        cell.avatarImage.image = UIImage.init(named: data.avatar ?? "")
        
        return cell
    }
}

extension PeopleViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
