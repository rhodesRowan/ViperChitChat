//
//  ChatListModuleBuilder.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

struct ChatListModuleBuilder {}

extension ChatListModuleBuilder: ChatListBuilderInterface {

    func buildModule() -> UIViewController? {
        let viewController = ChatListViewController()
        let router = ChatListRouter(viewController: viewController)
        let interactor = ChatListInteractor()
        let presenter = ChatListPresenter(withRouter: router, interactor: interactor, view: viewController)
        interactor.presenter = presenter
        viewController.presenter = presenter
        return viewController
    }
}
