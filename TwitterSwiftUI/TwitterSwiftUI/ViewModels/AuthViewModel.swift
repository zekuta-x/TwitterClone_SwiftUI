//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/24.
//

import SwiftUI
import Firebase


class AuthViewModel: ObservableObject {
    
    func login(){
        
    }
    
    func registerUser(email: String, password: String, username: String, fullname: String, profileImage: UIImage){
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
        }
        
        print("DEBUG: Successfully signed up user...")
        
    }
}
