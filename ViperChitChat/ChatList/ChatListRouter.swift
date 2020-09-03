//
//  ChatListRouter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

class ChatListRouter: ChatListRouterInterface {

    // MARK: Properties
    var viewController: UIViewController?

    init (viewController: UIViewController) {
        self.viewController = viewController
    }
}
