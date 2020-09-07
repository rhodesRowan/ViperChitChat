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
    // TODO: Declare view methods
    var presenter: RegisterPresenterInterface? { get set }
}

protocol RegisterPresenterInterface: class {
    // TODO: Declare presentation methods
    var view: RegisterViewInterface? { get set }
    var router: RegisterRouterInterface? { get set }
    var interactor: RegisterInteractorInterface? { get set }
}

protocol RegisterInteractorInterface: class {
    // TODO: Declare use case methods
    var presenter: RegisterPresenterInterface? { get set }
}

protocol RegisterRouterInterface: class {
    var viewController: UIViewController? { get set }
}

protocol RegisterBuilderInterface {
    func buildModule() -> UIViewController?
}
