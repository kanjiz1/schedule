//
//  AuthService.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/8/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email:String, andPassword password:String, userRegistrationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()){
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard let user = user else {
                userRegistrationComplete(false, error)
                return
            }
            
            let userData = ["provider": user.user.providerID, "email": user.user.email]
            
            DataService.instance.createUsers(uid: user.user.uid, userData: userData)
            
            userRegistrationComplete(true, nil)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginSuccessful: @escaping(_ status: Bool, _ error: Error?) -> ()){
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                loginSuccessful(false, error)
                return
            }
            loginSuccessful(true, nil)
        }
    }
}
