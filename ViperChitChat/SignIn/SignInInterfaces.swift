//
//  SignInInterfaces.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

protocol SignInViewInterface: class {
    var presenter: SignInPresenterInterface? { get set }
    
    func showFailedToSignIn(with error: String)
}

protocol SignInPresenterInterface: class {
    var view: SignInViewInterface? { get set }
    var router: SignInRouterInterface? { get set }
    var interactor: SignInInteractorInterface? { get set }

    func notifyUserDidPressRegisterButton()
    func notifyUserDidPressSignIn(with email: String, password: String)
    
    func userSuccessfullySignIn()
    func userFailedToSignIn(with error: String)
}

protocol SignInInteractorInterface: class {
    var presenter: SignInPresenterInterface? { get set }
    
    func attemptToSignIn(with email: String, password: String)
}

protocol SignInRouterInterface: class {
    var viewController: UIViewController? { get set }
    
    func presentRegisterModule()
    func presentChatListModule()
}

protocol SignInBuilderInterface {
    func buildModule() -> UIViewController?
}
