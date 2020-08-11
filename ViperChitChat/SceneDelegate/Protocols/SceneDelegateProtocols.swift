//
//  SceneDelegateProtocols.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 11/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

// MARK:- communicating from the presenter to the view

protocol SceneDelegateViewProtocol: class {
    var presenter: SceneDelegatePresenterProtocol? { get set}
}

// MARK:- communicating from the presenter to the router

protocol SceneDelegateRouterProtocol: class {
    func presentChatListModule()
    func presentLoginModule()
}

// MARK:- communicating from the view to the presenter

protocol SceneDelegatePresenterProtocol: class {
    var view: SceneDelegateViewProtocol? { get set }
    var interactor: SceneDelegateInteractorInputProtocol? { get set }
    var router: SceneDelegateRouterProtocol? { get set }
    func willConnectTo()
}

// MARK:- communicating from the interactor to the presenter

protocol SceneDelegateInteractorOutputProtocol: class {
}

// MARK:-  communicating from the presenter to the interactor

protocol SceneDelegateInteractorInputProtocol: class {
    var presenter: SceneDelegateInteractorOutputProtocol? { get set }
    var APIDataManager: SceneDelegateAPIDataManagerInputProtocol? { get set }
    func isUserLoggedIn() -> Bool
}

// MARK:- communicating from the presenter to the interactor

protocol SceneDelegateAPIDataManagerInputProtocol: class {
    func isUserLoggedIn() -> Bool
}
