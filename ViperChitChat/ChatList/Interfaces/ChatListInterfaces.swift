//
//  ChatListInterfaces.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 31/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import UIKit

protocol ChatListViewInterface {
    var presenter: ChatListPresenterInterface { get set }
}

protocol ChatListInteractorInterface {
    var dataManager: ChatListDataManagerInterface { get set }
    var presenter: ChatListPresenterInterface { get set }
    func fetchChatMessages(forUser userID: String)
}

protocol ChatListPresenterInterface {
    var view: ChatListViewInterface { get set }
    var interactor: ChatListInteractorInterface { get set }
    var router: ChatlistRouterInterface { get set }
    func notifyUserDidTapCell()
}

protocol ChatListDataManagerInterface {
    var interactor: ChatListInteractorInterface { get set }
    func fetchChatMessages(forUser userID: String, completion: @escaping(Bool?) -> Void)
}

protocol ChatlistRouterInterface {
    func createChatListModule()
    func presentSignInModule()
    func presentNewChatModule()
    func presentSettingsModule()
}
