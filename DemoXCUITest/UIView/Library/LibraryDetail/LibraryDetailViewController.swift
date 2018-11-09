//
//  LibraryDetailViewController.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/11/6.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit
import YouTubePlayer

class LibraryDetailViewController: UIViewController {

    open var poiData:POIData?
    var videoPlayer = YouTubePlayerView(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
    
    @IBOutlet weak var planeView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelContent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let poiData = poiData else {
            switchToLastPage()
            return
        }
        
        self.modalPresentationStyle = .custom
        
        setupOKButton()
        setupPlaneView()
        setupLabel()
        imageView.image = UIImage.init(named: poiData.imageURL ?? "")
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.handleGesture(gesture:)))
        swipeDown.direction = .down
        self.view.addGestureRecognizer(swipeDown)
    
        videoPlayer.loadVideoID(poiData.youtubeId ?? "")
        view.addSubview(videoPlayer)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                self.videoPlayer.frame.origin.y -= UIScreen.main.bounds.size.height
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
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
    
    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == .down {
            UIView.animate(withDuration: 0.2, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                self.videoPlayer.frame.origin.y += UIScreen.main.bounds.size.height
                self.view.layoutIfNeeded()
                self.videoPlayer.stop()
                self.videoPlayer.clear()
            }, completion: nil)
        }
    }
}
