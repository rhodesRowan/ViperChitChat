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
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let signInView = SignInViewController(nibName: "SignInViewController", bundle: nil)
        let signInInteractor = SignInInteractor()
        signInInteractor.dataManager = SignInDataManager()
        let signInPresenter = SignInPresenter()
        signInInteractor.presenter = signInPresenter
        signInPresenter.interactor = signInInteractor
        signInPresenter.router = SignInRouter()
        signInPresenter.view = signInView
        signInView.presenter = signInPresenter
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = signInView
        window?.makeKeyAndVisible()
        
    }
}
