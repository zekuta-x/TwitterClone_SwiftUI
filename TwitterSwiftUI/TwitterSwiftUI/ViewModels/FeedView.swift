//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/01.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                
            }
            
            Button(action: {}, label: {
                Image(systemName: "plus.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding()
            })
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
