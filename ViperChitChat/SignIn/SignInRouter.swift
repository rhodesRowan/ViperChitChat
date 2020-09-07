//
//  SignInRouter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

class SignInRouter: SignInRouterInterface {

    // MARK: Properties
    var viewController: UIViewController?

    init (viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func presentRegisterModule() {
        let registerBuilder = RegisterModuleBuilder()
        guard let viewController = self.viewController, let registerVC = registerBuilder.buildModule() else {
            return
        }
        
        viewController.present(registerVC, animated: true, completion: nil)
    }
    
    func presentChatListModule() {
        let chatListBuilder = ChatListModuleBuilder()
        guard let viewController = self.viewController, let chatListVC = chatListBuilder.buildModule() else {
            return
        }
        
        viewController.present(chatListVC, animated: true, completion: nil)
    }
}
