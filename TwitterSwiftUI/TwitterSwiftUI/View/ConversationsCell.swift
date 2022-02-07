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
                        .font(.system(size: 14))
                        .lineLimit(2)
                }
                .frame(height: 64)
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
