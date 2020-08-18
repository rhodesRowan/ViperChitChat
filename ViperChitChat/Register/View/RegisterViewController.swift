//
//  RegisterViewController.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 18/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, RegisterViewInterface {
    
    var presenter: RegisterPresenterInterface?
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func register(_ sender: Any) {
        presenter?.notifyUserDidTapRegisterButton(withEmail: emailTextField.text ?? "",
                                                  password: passwordTextField.text ?? "")
    }
    
    func showErrorMessages(error: String) {
        print(error)
    }
}
