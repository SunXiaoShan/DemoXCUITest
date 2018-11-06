//
//  LibraryViewController.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/10/26.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {
    struct POIData {
        var imageURL: String?
    }
    
    lazy var libraryList:[POIData] = [
        POIData(
            imageURL: "RalphBreaks"
        ),
        POIData(
            imageURL: "BigHero"
        ),
        POIData(
        imageURL: "brave"
        ),
        POIData(
        imageURL: "coco"
        ),
        POIData(
        imageURL: "disneyposter53"
        ),
        POIData(
        imageURL: "incredible"
        ),
        POIData(
        imageURL: "mickey"
        )
    ]
    
    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mainTableView.dataSource = self
        mainTableView.delegate = self
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
        
        return cell
    }
    
    @objc func actionPlay(_ sender:UIButton) {
        print("fjiefjie")
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
