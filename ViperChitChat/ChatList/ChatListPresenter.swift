//
//  ChatListPresenter.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class ChatListPresenter: ChatListPresenterInterface {

    // MARK: Properties

    var view: ChatListViewInterface?
    var router: ChatListRouterInterface?
    var interactor: ChatListInteractorInterface?

    // MARK: Initialization

    init(withRouter router: ChatListRouterInterface, interactor: ChatListInteractorInterface, view: ChatListViewInterface) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}
