//
//  LibraryViewController.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/10/26.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {
    lazy var libraryList:[POIData] = LibraryData.getLibraryDataList()
    
    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mainTableView.dataSource = self
        mainTableView.delegate = self
    }
    
    func switchToPOIPage(_ poiData:POIData) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LibraryDetailViewController") as! LibraryDetailViewController
        vc.poiData = poiData
        vc.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        present(vc, animated: true) {
        }
    }
}

extension LibraryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return libraryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "LibraryTableViewCell"
        let data:POIData = libraryList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! LibraryTableViewCell
    
        cell.selectionStyle = .none
        cell.mainImage?.image = UIImage.init(named: data.imageURL ?? "")
        cell.playButton.addTarget(self, action: #selector(actionPlay(_:)), for: .touchUpInside)
        cell.playButton.tag = indexPath.row
        
        return cell
    }
    
    @objc func actionPlay(_ sender:UIButton) {
        let poiData = libraryList[sender.tag]
        switchToPOIPage(poiData)
    }
    
    
}

extension LibraryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
