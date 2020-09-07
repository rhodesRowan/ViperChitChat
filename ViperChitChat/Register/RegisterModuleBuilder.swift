//
//  RegisterModuleBuilder.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 07/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

struct RegisterModuleBuilder {}

extension RegisterModuleBuilder: RegisterBuilderInterface {

    func buildModule() -> UIViewController? {
        let viewController = RegisterViewController()
        let router = RegisterRouter(viewController: viewController)
        let interactor = RegisterInteractor()
        let presenter = RegisterPresenter(withRouter: router, interactor: interactor, view: viewController)
        interactor.presenter = presenter
        viewController.presenter = presenter
        return viewController
    }
}
