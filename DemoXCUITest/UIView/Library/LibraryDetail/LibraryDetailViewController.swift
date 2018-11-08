//
//  LibraryDetailViewController.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/11/6.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class LibraryDetailViewController: UIViewController {

    open var poiData:POIData?
    
    @IBOutlet weak var planeView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelContent: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard poiData != nil else {
            switchToLastPage()
            return
        }
        
        self.modalPresentationStyle = .custom
        
        setupOKButton()
        setupPlaneView()
        setupLabel()
        imageView.image = UIImage.init(named: poiData?.imageURL ?? "")
        
    }
    
    func switchToLastPage() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionOKButton(_ sender: Any) {
        switchToLastPage()
    }
    
    func setupOKButton() {
        okButton.layer.cornerRadius = 10.0
        okButton.layer.borderColor = UIColor.gray.cgColor
        okButton.layer.borderWidth = 2
        okButton.clipsToBounds = true
    }
    
    func setupImageView() {
        imageView.layer.cornerRadius = 10.0
        imageView.layer.borderColor = UIColor.gray.cgColor
        imageView.layer.borderWidth = 2
        imageView.clipsToBounds = true
    }
    
    func setupPlaneView() {
        planeView.layer.cornerRadius = 10.0
        planeView.layer.borderColor = UIColor.gray.cgColor
        planeView.layer.borderWidth = 2
        planeView.clipsToBounds = true
    }
    
    func setupLabel() {

        
        labelTitle.text = poiData?.movieName
        labelTitle.sizeToFit()
        labelTitle.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        labelContent.text = poiData?.content
        labelContent.sizeToFit()
        labelContent.lineBreakMode = NSLineBreakMode.byWordWrapping
        
    }
    


}
