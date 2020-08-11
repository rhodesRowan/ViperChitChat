//
//  RootRouter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 11/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

class RootRouter {
    var window: UIWindow!
    
    func showRootViewController(viewController: UIViewController) {
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
