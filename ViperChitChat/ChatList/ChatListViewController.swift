//
//  ChatListViewController.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 03/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

class ChatListViewController: UIViewController, ChatListViewInterface {

    // MARK: Properties

    var presenter: ChatListPresenterInterface?

    // MARK: Initialization

    init(nibFile nib: String = "ChatListViewController") {
        super.init(nibName: nib, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
