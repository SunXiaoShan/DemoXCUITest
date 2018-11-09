//
//  SignInViewController.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/11/6.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

class SignInViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var pwText: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    var alert:UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationStyle = .custom
        
        setupSignInButton()
    }
    
    func setupSignInButton() {
        signInButton.layer.cornerRadius = 10.0
        signInButton.layer.borderColor = UIColor.gray.cgColor
        signInButton.layer.borderWidth = 2
        signInButton.clipsToBounds = true
    }
    
    func showLoading(completed: @escaping () -> Void) {
        alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
        
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating();
        
        alert!.view.addSubview(loadingIndicator)
        present(alert, animated: true) {
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.alert.dismiss(animated: true)
            completed()
        }
    }

    let disposeBag = DisposeBag()
    @IBAction func actionSignIn(_ sender: Any) {
        signIn(accountText.text ?? "", pwText.text ?? "")
            .subscribe { [weak self] event in
                switch event {
                case .success(let result):
                    print("result: ", result)
                    DispatchQueue.main.async { [weak self] in
                        let account = self?.accountText.text ?? ""
                        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "loginSuccess"), object: nil, userInfo: ["account": account])
                        self?.dismissPage()
                    }
                case .error(let error):
                    print("error: ", error)
                }
            }
            .disposed(by: disposeBag)
    }
    
    func dismissPage() {
        self.dismiss(animated: true) {
            
        }
    }
    
    func signIn(_ account: String, _ pw: String) -> Single<String> {
        return Single<String>.create { [weak self] single in
            // sign in function
            self?.showLoading(
                completed: {
                    single(.success("success"))
            } )
            
            return Disposables.create { }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
