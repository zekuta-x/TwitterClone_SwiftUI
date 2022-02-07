//
//  TwwetCell.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/03.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 14){
                Image("Donald")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 54)
                    .cornerRadius(56/2)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack{
                        
                    Text("Donald Mcdonald")
                        .font(.system(size: 14, weight: .semibold))
                        
                        Text("@mcdonald")
                            .font(.system(size: 12, weight: .light))
                            .foregroundColor(.gray)
                        
                        Text("2m")
                            .font(.system(size: 12, weight: .light))
                            .foregroundColor(.gray)
                    }
                    
                    Text("I'm lovin' it aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                }
            }
            .padding(.top)
            .padding(.bottom)
            .padding(.trailing)
            
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
            }
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            Divider()
        }
        .padding(.leading, -16)
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
