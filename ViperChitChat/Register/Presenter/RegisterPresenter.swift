//
//  RegisterInterface.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 18/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class RegisterPresenter: RegisterPresenterInterface {

    var interactor: RegisterInteractorInterface?
    var view: RegisterViewInterface?
    var router: RegisterRouterInterface?

    func notifyUserDidTapRegisterButton(withEmail email: String, password: String) {
        self.interactor?.attemptToRegisterUser(withEmail: email, password: password)
    }

    func notifyViewDidLoad() {
        print("the register view did load")
    }

    func didSignUpSuccessfully() {
        router?.createChatListModule()
        print("the user did sign up successfully")
    }

    func didFailToSignUp() {
        view?.showErrorMessages(error: "there was an error trying to sign up")
        print("the user did fail to sign up")
    }

    func notifyUserDidTapCloseButton() {
        router?.dismissRegisterModule()
    }
}
