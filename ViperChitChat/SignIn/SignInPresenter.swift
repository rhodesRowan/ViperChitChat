//
//  SignInPresenter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class SignInPresenter: SignInPresenterInterface {

    // MARK: Properties

    var view: SignInViewInterface?
    var router: SignInRouterInterface?
    var interactor: SignInInteractorInterface?

    // MARK: Initialization

    init(withRouter router: SignInRouterInterface, interactor: SignInInteractorInterface, view: SignInViewInterface) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    // MARK: Methods
    func notifyUserDidPressRegisterButton() {
        router?.presentRegisterModule()
    }
    
    func notifyUserDidPressSignIn(with email: String, password: String) {
        interactor?.attemptToSignIn(with: email, password: password)
    }
    
    func userSuccessfullySignIn() {
        router?.presentChatListModule()
    }
    
    func userFailedToSignIn(with error: String) {
        view?.showFailedToSignIn(with: error)
    }
}
