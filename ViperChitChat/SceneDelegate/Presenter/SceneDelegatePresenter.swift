//
//  SceneDelegatePresenter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 11/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class SceneDelegatePresenter: SceneDelegatePresenterProtocol, SceneDelegateInteractorOutputProtocol {
    
    var view: SceneDelegateViewProtocol?
    var interactor: SceneDelegateInteractorInputProtocol?
    var router: SceneDelegateRouterProtocol?
    
    func willConnectTo() {
    }
}

