//
//  SignInInterfaces.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 16/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

protocol SignInViewInterface {
    var presenter: SignInPresenterInterface? { get set }
    func showErrorMessage(withError error: String)
}

protocol SignInInteractorInterface {
    var dataManager: SignInDataManagerInterface? { get set }
    var presenter: SignInPresenter? { get set }
    func attemptToSignIn(withEmail email: String, password: String)
}

protocol SignInPresenterInterface {
    var interactor: SignInInteractorInterface? { get set }
    var view: SignInViewInterface? { get set }
    func notifyViewDidLoad()
    func notifyUserDidTapSignInButton(withEmail email: String, password: String)
    
    func userDidLoginSuccessfully()
    func userDidFailToLogin()
}

protocol SignInDataManagerInterface {
    func attemptToSignIn(withEmail email: String, password: String, completion: @escaping (Bool) -> Void)
}

protocol SignInRouterInterface {
    func presentSignInModule()
    func presentChatListModule()
    func presentRegisterModule()
}
