//
//  RegisterRouter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 07/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

class RegisterRouter: RegisterRouterInterface {

    // MARK: Properties

    var viewController: UIViewController?

    init (viewController: UIViewController) {
        self.viewController = viewController
    }

    // MARK: RegisterRouterInterface

    func presentChatListModule() {
        let chatListBuilder = ChatListModuleBuilder()
        guard let viewController = viewController, let chatListVC = chatListBuilder.buildModule() else {
            return
        }

        chatListVC.modalPresentationStyle = .fullScreen
        viewController.present(chatListVC, animated: true, completion: nil)
    }

    func presentRegisterModule() {
        guard let viewController = viewController else {
            return
        }

        viewController.dismiss(animated: true, completion: nil)
    }
}
