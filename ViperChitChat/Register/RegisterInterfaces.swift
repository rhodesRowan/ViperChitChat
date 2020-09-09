//
//  RegisterInterfaces.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 07/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

protocol RegisterViewInterface: class {

    var presenter: RegisterPresenterInterface? { get set }
    
    func showFailedToRegisterError(_ error: String)

}

protocol RegisterPresenterInterface: class {

    var view: RegisterViewInterface? { get set }
    var router: RegisterRouterInterface? { get set }
    var interactor: RegisterInteractorInterface? { get set }
    
    func notifyUserDidPressClose()
    func notifyUserDidPressRegister(with email: String, password: String, name: String)
    
    func userDidRegisterSuccesfully()
    func userDidFailToRegister(with error: String)
}

protocol RegisterInteractorInterface: class {

    var presenter: RegisterPresenterInterface? { get set }

    func attemptToRegisterUser(with email: String, password: String, name: String)
}

protocol RegisterRouterInterface: class {
    var viewController: UIViewController? { get set }
    
    func presentChatListModule()
    func presentRegisterModule()
}

protocol RegisterBuilderInterface {
    func buildModule() -> UIViewController?
}
