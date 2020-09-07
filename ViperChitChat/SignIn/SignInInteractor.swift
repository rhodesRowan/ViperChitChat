//
//  SignInInteractor.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class SignInInteractor: SignInInteractorInterface {
    
    // MARK: Properties
    var presenter: SignInPresenterInterface?
    
    // MARK: Methods
    func attemptToSignIn(with email: String, password: String) {
        AuthManager.sharedInstance.login(email: email, password: password) { [weak self] success, error in
            guard let self = self else {
                return
            }
            
            if let error = error {
                self.presenter?.userFailedToSignIn(with: error)
            } else if success {
                self.presenter?.userSuccessfullySignIn()
            }
        }
    }
}
