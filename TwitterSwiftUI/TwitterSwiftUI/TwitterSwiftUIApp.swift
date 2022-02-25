//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/01/28.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
