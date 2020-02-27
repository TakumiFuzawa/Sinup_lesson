//
//  SinupViewController.swift
//  Sinup_lesson
//
//  Created by Takumi Fuzawa on 2020/02/27.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class SinupViewController: BaseViewController {
    
    var userModel:UserModel = UserModel()
    
    @IBOutlet var mailTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var sinupButton: UIButton!
    @IBOutlet var LoginButton: UIButton!
    
    @IBAction func touchedSinupButton(_ sender: UIButton) {
        userModel.mail = mailTextField.text
        userModel.password = passTextField.text
        UserModel.create(request: userModel, success: {
            print("登録に成功しましたよ")
        }) { (error) in
            print(error)
        }
    }
    
    @IBAction func touchedLoginButton(_ sender: UIButton) {
        let lvc = LoginViewController()
        transitionViewController(from: self, to: lvc)
        
    }
    
}

// MARK: - Life cycle
extension SinupViewController {
    override func loadView() {
        super.loadView()
        sinupButton.layer.cornerRadius = 15.0
        LoginButton.layer.cornerRadius = 15.0
    }
}

// MARK: - Protocol
extension SinupViewController {
    
}

// MARK: - method
extension SinupViewController {
    
}

