//
//  Authentication.swift
//  FirebaseChat_1931358
//
//  Created by Matheus Cadena on 2022-04-05.
//

import Foundation
import Firebase

class Authentication
{
    static func signIn(email : String, password : String)
    {
        Auth.auth().signIn(withEmail: email, password: password) {result, error in
            if error != nil
            {
                print(error!.localizedDescription)
                return
            }
            print(result!.user.uid)
        }
    }
    
    static func signUp(email : String, password : String)
    {
        Auth.auth().createUser(withEmail: email.lowercased(), password: password) {result, error in
            if error != nil
            {
                print(error!.localizedDescription)
                return
            }
            print(result!.user.uid)
        }
    }

}
