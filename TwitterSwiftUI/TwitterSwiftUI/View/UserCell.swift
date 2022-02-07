//
//  UserCell.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/03.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12){
            Image("ColonelSanders")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("ColonelSanders")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Eddie Brock")
                    .font(.system(size: 14))
            }
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
