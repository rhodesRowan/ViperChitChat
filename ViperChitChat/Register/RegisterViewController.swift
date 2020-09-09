//
//  RegisterViewController.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 07/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController, RegisterViewInterface {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: AuthTextField!
    @IBOutlet weak var emailTextField: AuthTextField!
    @IBOutlet weak var passwordTextField:  AuthTextField!

    var presenter: RegisterPresenterInterface?

    // MARK: Initialization

    init(nibFile nib: String = "RegisterViewController") {
        super.init(nibName: nib, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Actions
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        guard let email = emailTextField.text, let name = nameTextField.text,
            let password = passwordTextField.text else {
            return
        }

        presenter?.notifyUserDidPressRegister(with: email, password: password, name: name)
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        presenter?.notifyUserDidPressClose()
    }

    // MARK: RegisterViewInterface

    func showFailedToRegisterError(_ error: String) {
        print("show error : \(error)")
    }
}
