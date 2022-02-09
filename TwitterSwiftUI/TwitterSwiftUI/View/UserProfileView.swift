//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/09.
//

import SwiftUI

struct UserProfileView: View {
//    let user: User
//    @ObservedObject var viewModel: ProfileViewModel
    @State var selectedFilter: TweetFilterOptions = .tweets
    
//    init(user: User){
//        self.user = user
//        self.viewModel = UserProfileViewModel(user: user)
//    }
    
    
    var body: some View {
        ScrollView{
            VStack{
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(0..<9){ tweet in
                    TweetCell()
                        .padding()
                }
                
            }
            
//            .navigationTitle(user.username)
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
