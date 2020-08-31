//
//  SignInPresenter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 16/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class SignInPresenter: SignInPresenterInterface {

    var interactor: SignInInteractorInterface?
    var view: SignInViewInterface?
    var router: SignInRouterInterface?

    func notifyViewDidLoad() {
        print("view did load")
    }

    func notifyUserDidTapSignInButton(withEmail email: String, password: String) {
        self.interactor?.attemptToSignIn(withEmail: email, password: password)
    }

    func notifyUserDidTapSignUpButton() {
        self.router?.presentRegisterModule()
    }

    func userDidLoginSuccessfully() {
        print("user did sign in succesfully")
        router?.presentChatListModule()
    }

    func notifyUserDidTapRegisterButton() {
        router?.presentRegisterModule()
    }

    func userDidFailToLogin() {
        print("user did fail to sign in")
    }
}
