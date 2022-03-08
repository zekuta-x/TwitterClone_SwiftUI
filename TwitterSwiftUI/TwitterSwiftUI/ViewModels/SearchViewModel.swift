//
//  SearchViewModel.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/03/08.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers(){
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.users = documents.map({ User(dictionary:  $0.data() )})
            
        }
    }
}
