//
//  SceneDelegate.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 04/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard (scene as? UIWindowScene) != nil else { return }
        
        // Root Router
        let rootRouter = RootRouter()
        rootRouter.window = window
        
        //Settings Router
        
        //CreateChat Router
        
        //ChatList Router
        
        //ChatLog Router
        
        //Register Router
        
        //Login Router
        
    }
}
