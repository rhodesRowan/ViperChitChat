//
//  SignInDataManager.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 16/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation

class SignInDataManager: SignInDataManagerInterface {
    
    func attemptToSignIn(withEmail email: String, password: String, completion: @escaping (Bool) -> Void) {
        completion(true)
    }
}
