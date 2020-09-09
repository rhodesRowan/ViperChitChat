//
//  SignInViewController.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

class SignInViewController: UIViewController, SignInViewInterface {

    // MARK: Properties
    var presenter: SignInPresenterInterface?
    @IBOutlet weak var emailTextField: AuthTextField!
    @IBOutlet weak var passwordTextField: AuthTextField!

    // MARK: Initialization

    init(nibFile nib: String = "SignInViewController") {
        super.init(nibName: nib, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Methods
    func showFailedToSignIn(with error: String) {
        print("there was an error signing in")
    }
    
    // MARK: IBActions
    @IBAction func registerButtonPressed(_ sender: Any) {
        presenter?.notifyUserDidPressRegisterButton()
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        guard let email = emailTextField.text, let password = passwordTextField.text else {
            return
        }
        
        presenter?.notifyUserDidPressSignIn(with: email, password: password)
    }
}
