//
//  RegisterInteractor.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 07/09/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class RegisterInteractor: RegisterInteractorInterface {
    
    // MARK: Properties
    var presenter: RegisterPresenterInterface?
    
    // MARK: RegisterInteractorInterface
    func attemptToRegisterUser(with email: String, password: String, name: String) {
        AuthManager.sharedInstance.register(email: email, password: password, name: name) { [weak self] success, error in
            guard let self = self else {
                return
            }
            
            if success {
                self.presenter?.userDidRegisterSuccesfully()
            } else {
                self.presenter?.userDidFailToRegister(with: error ?? "There was an error registering you as a user")
            }
        }
    }
}
