//
//  RegisterInterfaces.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 18/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

protocol RegisterViewInterface {
    var presenter: RegisterPresenterInterface? { get set }

    func showErrorMessages(error: String)
}

protocol RegisterInteractorInterface {
    var presenter: RegisterPresenterInterface? { get set }
    var dataManager: RegisterDataManagerInterface? { get set }

    func attemptToRegisterUser(withEmail email: String, password: String)
}

protocol RegisterPresenterInterface {
    var interactor: RegisterInteractorInterface? { get set }
    var view: RegisterViewInterface? { get set }
    var router: RegisterRouterInterface? { get set }

    func notifyUserDidTapRegisterButton(withEmail email: String, password: String)
    func notifyViewDidLoad()
    func notifyUserDidTapCloseButton()

    func didSignUpSuccessfully()
    func didFailToSignUp()
}

protocol RegisterDataManagerInterface {
    var interactor: RegisterInteractorInterface? { get set }
    func attemptToRegisterUser(withEmail email: String, password: String, completion: @escaping (Bool) -> Void)
}

protocol RegisterRouterInterface {
    func createRegisterModule(fromCaller: AnyObject)
    func createChatListModule()
    func dismissRegisterModule()
}
