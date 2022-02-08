//
//  ConversationsCell.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/03.
//

import SwiftUI

struct ConversationsCell: View {
    var body: some View {
        ZStack{
            HStack(spacing: 12){
                Image("ColonelSanders")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("ColonelSanders") // User name
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Eddie Brockasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                .foregroundColor(.black)
                .padding(.trailing)
            }
        }
    }
}

struct ConversationsCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsCell()
    }
}
