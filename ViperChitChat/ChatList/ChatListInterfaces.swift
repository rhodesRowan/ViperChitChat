//
//  ChatListInterfaces.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

protocol ChatListViewInterface: class {
    // TODO: Declare view methods
    var presenter: ChatListPresenterInterface? { get set }
}

protocol ChatListPresenterInterface: class {
    // TODO: Declare presentation methods
    var view: ChatListViewInterface? { get set }
    var router: ChatListRouterInterface? { get set }
    var interactor: ChatListInteractorInterface? { get set }
}

protocol ChatListInteractorInterface: class {
    // TODO: Declare use case methods
    var presenter: ChatListPresenterInterface? { get set }
}

protocol ChatListRouterInterface: class {
    var viewController: UIViewController? { get set }
}

protocol ChatListBuilderInterface {
    func buildModule() -> UIViewController?
}
