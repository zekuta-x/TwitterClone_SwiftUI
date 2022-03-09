//
//  User.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/25.
//

import Firebase

struct User: Identifiable{
    let id: String
    let username: String
    let ProfileImageurl: String
    let fullname: String
    let email: String
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == self.id }
    
    init(dictionary: [String: Any]){
        self.id = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.ProfileImageurl = dictionary["profileImageUrl"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
    }
}
