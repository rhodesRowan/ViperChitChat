//
//  RegisterPresenter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 07/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class RegisterPresenter: RegisterPresenterInterface {

    // MARK: Properties

    var view: RegisterViewInterface?
    var router: RegisterRouterInterface?
    var interactor: RegisterInteractorInterface?

    // MARK: Initialization

    init(withRouter router: RegisterRouterInterface, interactor: RegisterInteractorInterface, view: RegisterViewInterface) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    // MARK: RegisterPresenterInterface methods
    func notifyUserDidPressClose() {
        router?.presentRegisterModule()
    }
    
    func notifyUserDidPressRegister(with email: String, password: String, name: String) {
        interactor?.attemptToRegisterUser(with: email, password: password, name: name)
    }
    
    func userDidRegisterSuccesfully() {
        router?.presentChatListModule()
    }
    
    func userDidFailToRegister(with error: String) {
        view?.showFailedToRegisterError(error)
    }
}
