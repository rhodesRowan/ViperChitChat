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
    var presenter: ChatListPresenterInterface? { get set }
}

protocol ChatListPresenterInterface: class {
    var view: ChatListViewInterface? { get set }
    var router: ChatListRouterInterface? { get set }
    var interactor: ChatListInteractorInterface? { get set }
}

protocol ChatListInteractorInterface: class {
    var presenter: ChatListPresenterInterface? { get set }
}

protocol ChatListRouterInterface: class {
    var viewController: UIViewController? { get set }
}

protocol ChatListBuilderInterface {
    func buildModule() -> UIViewController?
}
