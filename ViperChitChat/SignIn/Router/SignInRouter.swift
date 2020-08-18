//
//  SignInRouter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 16/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

class SignInRouter: SignInRouterInterface {
    
    var signUpView: SignInViewController?
    
    func presentSignInModule(fromCaller: AnyObject) {
        guard let view = UIStoryboard(name: "SignInViewController", bundle: nil).instantiateViewController(identifier: "SignInViewController") as? SignInViewController  else {
            return
        }
        
        signUpView = view
        let signInView = SignInViewController()
        let signInInteractor = SignInInteractor()
        let signInPresenter = SignInPresenter()
        let signInDataManager = SignInDataManager()
        let signInRouter = SignInRouter()
        
        signInView.presenter = signInPresenter
        
        signInPresenter.interactor = signInInteractor
        signInPresenter.router = signInRouter
        signInPresenter.view = signInView
        
        signInInteractor.presenter = signInPresenter
        signInInteractor.dataManager = signInDataManager
        
        if let viewController = fromCaller as? UIViewController {
            viewController.present(signInView, animated: true, completion: nil)
        }
    }
    
    func presentChatListModule() {
    }
    
    func presentRegisterModule() {
        let registerView = RegisterViewController()
        let registerInteractor = RegisterInteractor()
        let registerPresenter = RegisterPresenter()
        let registerDataManager = RegisterDataManager()
        let registerRouter = RegisterRouter()
        
        registerView.presenter = registerPresenter
        
        registerPresenter.interactor = registerInteractor
        registerPresenter.view = registerView
        registerPresenter.router = registerRouter
        
        registerInteractor.presenter = registerPresenter
        registerInteractor.dataManager = registerDataManager
        
        
        signUpView?.present(registerView, animated: true, completion: nil)
    }
}
