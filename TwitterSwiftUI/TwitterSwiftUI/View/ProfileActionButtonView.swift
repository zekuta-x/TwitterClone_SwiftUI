//
//  ProfileActionButtonView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/09.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser{
            Button(action: {}, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
            })
            .cornerRadius(20)
            .shadow(color: .black, radius: 3, x: 0, y: 0)
        } else {
            HStack{
                Button(action: {}, label: {
                    Text("Following")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(color: .black, radius: 3, x: 0, y: 0)
                
                Button(action: {}, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(color: .black, radius: 3, x: 0, y: 0)
            }
            
            
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}
