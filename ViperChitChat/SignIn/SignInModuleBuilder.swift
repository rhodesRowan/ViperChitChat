//
//  SignInModuleBuilder.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

struct SignInModuleBuilder {}

extension SignInModuleBuilder: SignInBuilderInterface {

    func buildModule() -> UIViewController? {
        let viewController = SignInViewController()
        let router = SignInRouter(viewController: viewController)
        let interactor = SignInInteractor()
        let presenter = SignInPresenter(withRouter: router, interactor: interactor, view: viewController)
        interactor.presenter = presenter
        viewController.presenter = presenter
        return viewController
    }
}
