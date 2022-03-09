//
//  ProfileHeaderView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/09.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    @State var selectedFillter: TweetFilterOptions = .tweets
    let user: User
    
    var body: some View {
        VStack{
            KFImage(URL(string: user.ProfileImageurl))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120/2)
                .shadow(color: .black, radius: 10, x: 0, y: 0)
            
            Text(user.fullname)
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@\(user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Be your best self. Make a difference. Have fun.")
                .padding(.top, 8)
                .font(.system(size: 14))
            
            HStack{
                Spacer()
                VStack{
                    Text("16")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("Follower")
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack{
                    Text("16")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("Following")
                        .foregroundColor(.gray)
                }
                Spacer()
            }.padding(.top, 20)

            ProfileActionButtonView(isCurrentUser: true)
                .padding(.top, 20)
            
            Spacer()
        }
        
    }
}
