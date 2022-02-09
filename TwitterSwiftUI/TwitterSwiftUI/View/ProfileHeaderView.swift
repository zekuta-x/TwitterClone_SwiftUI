//
//  ProfileHeaderView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/09.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        
        VStack{
            Image("ColonelSanders")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120/2)
                .shadow(color: .black, radius: 10, x: 0, y: 0)
            
            Text("ColonelSanders")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@KFC")
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

            ProfileActionButtonView(isCurrentUser: false)
                .padding(.top, 20)
            
            Spacer()
        }
        
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
