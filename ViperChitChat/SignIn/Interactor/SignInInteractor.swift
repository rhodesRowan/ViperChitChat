//
//  SignInInteractor.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 16/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class SignInInteractor: SignInInteractorInterface {
    
    var dataManager: SignInDataManagerInterface?
    var presenter: SignInPresenter?
    
    func attemptToSignIn(withEmail email: String, password: String) {
        dataManager?.attemptToSignIn(withEmail: email, password: password, completion: { success in
            if success {
                self.presenter?.userDidLoginSuccessfully()
            } else {
                self.presenter?.userDidFailToLogin()
            }
        })
    }
}
