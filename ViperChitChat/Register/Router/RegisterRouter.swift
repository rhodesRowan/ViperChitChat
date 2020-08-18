//
//  RegisterRouter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 18/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

class RegisterRouter: RegisterRouterInterface {
    
    
    var registerView: RegisterViewController?
    
    func createRegisterModule(fromCaller: AnyObject) {
        guard let view = UIStoryboard(name: "RegisterViewController", bundle: nil).instantiateViewController(identifier: "RegisterViewController") as? RegisterViewController  else {
            return
        }
        
        registerView = view
        let registerView = RegisterViewController()
        let registerInteractor = RegisterInteractor()
        let registerPresenter = RegisterPresenter()
        let registerDataManager = RegisterDataManager()
        let registerRouter = RegisterRouter()
        
        registerView.presenter = registerPresenter
        
        registerPresenter.interactor = registerInteractor
        registerPresenter.router = registerRouter
        registerPresenter.view = registerView
        
        registerInteractor.presenter = registerPresenter
        registerInteractor.dataManager = registerDataManager
        
        if let viewController = fromCaller as? UIViewController {
            viewController.present(registerView, animated: true, completion: nil)
        }
    }
    
    func createChatListModule() {
        
    }
    
    func dismissRegisterModule() {
        
    }
    
    
    
    
}
