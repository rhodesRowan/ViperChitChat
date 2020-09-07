//
//  RegisterViewController.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 07/09/2020.
//Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController, RegisterViewInterface {

    // MARK: Properties

    var presenter: RegisterPresenterInterface?

    // MARK: Initialization

    init(nibFile nib: String = "RegisterViewController") {
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
