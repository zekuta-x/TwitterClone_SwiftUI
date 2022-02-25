//
//  User.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/25.
//

import Foundation

struct User: Identifiable{
    let id: String
    let username: String
    let ProfileImageurl: String
    let fullname: String
    let email: String
    
    init(dictionary: [String: Any]){
        self.id = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.ProfileImageurl = dictionary["profileImageUrl"] as? String ?? ""
        self.fullname = dictionary["email"] as? String ?? ""
        self.email = dictionary["fullname"] as? String ?? ""
    }
}
