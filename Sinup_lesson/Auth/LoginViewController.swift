//
//  LoginViewController.swift
//  Sinup_lesson
//
//  Created by Takumi Fuzawa on 2020/02/27.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class LoginViewController: BaseViewController{
    
    var userModel:UserModel = UserModel()
    
    @IBOutlet var mailAddTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var newSinupButton: UIButton!
    
    @IBAction func touchedLoginButton(_ sender: UIButton) {
        UserModel.signIn(email: mailAddTextField.text ?? "", pass: passwordTextField.text ?? "", failure: { (error) in
            print(error)
        }) {
            print("ログインに成功しました")
        }
    }
    @IBAction func touchedNewSinupButton(_ sender: UIButton) {
    }
    
}

// MARK: - Life cycle
extension LoginViewController {
    override func loadView() {
        super.loadView()
        loginButton.layer.cornerRadius = 15.0
        newSinupButton.layer.cornerRadius = 15.0
    }
}

// MARK: - Protocol
extension LoginViewController {
    
}

// MARK: - method
extension LoginViewController {
    
}

