//
//  SceneDelegate.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 04/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let chatListBuilder = ChatListModuleBuilder()
            window.rootViewController = chatListBuilder.buildModule()
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
