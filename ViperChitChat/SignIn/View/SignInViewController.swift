//
//  LoginViewController.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 16/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, SignInViewInterface {

    var presenter: SignInPresenterInterface?
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyViewDidLoad()
    }

    @IBAction func signInPressed(_ sender: Any) {
        presenter?.notifyUserDidTapSignInButton(withEmail: emailTextField.text ?? "",
                                                password: passwordTextField.text ?? "")
    }
    
    @IBAction func registerButton(_ sender: Any) {
        presenter?.notifyUserDidTapRegisterButton()
    }
    
    func showErrorMessage(withError error: String) {
        print("show error message")
    }
}
