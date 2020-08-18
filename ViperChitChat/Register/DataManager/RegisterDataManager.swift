//
//  RegisterInteractor.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 18/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class RegisterDataManager: RegisterDataManagerInterface {
    
    var interactor: RegisterInteractorInterface?
    
    func attemptToRegisterUser(withEmail email: String, password: String, completion: @escaping (Bool) -> Void) {
        completion(true)
    }
}
