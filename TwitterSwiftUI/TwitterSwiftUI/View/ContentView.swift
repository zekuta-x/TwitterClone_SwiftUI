//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/01/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            TabView{
                FeedView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                ConversationsView()
                    .tabItem{
                        Image(systemName: "envelope")
                        Text("Meseages")
                    }
            }
                .navigationBarTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
