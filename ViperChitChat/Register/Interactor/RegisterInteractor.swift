//
//  RegisterInteractor.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 18/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class RegisterInteractor: RegisterInteractorInterface {
    
    var presenter: RegisterPresenterInterface?
    var dataManager: RegisterDataManagerInterface?
    
    func attemptToRegisterUser(withEmail email: String, password: String) {
        dataManager?.attemptToRegisterUser(withEmail: email, password: password, completion: { success in
            if success {
                self.presenter?.didSignUpSuccessfully()
            } else {
                self.presenter?.didFailToSignUp()
            }
        })
    }
    
    
}
