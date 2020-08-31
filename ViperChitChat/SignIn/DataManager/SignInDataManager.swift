//
//  SignInDataManager.swift
//  ViperChitChat
//
//  Created by Rowan Rhodes on 16/08/2020.
//  Copyright © 2020 Rowan Rhodes. All rights reserved.
//

import Foundation
import Firebase

class SignInDataManager: SignInDataManagerInterface {

    func attemptToSignIn(withEmail email: String, password: String, completion: @escaping (Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { _, error in
            completion(error == nil)
        }
    }
}
