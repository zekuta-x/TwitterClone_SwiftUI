//
//  MessageView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/08.
//

import SwiftUI

struct MessageView: View {
    let message: Mockmessage
    
    var body: some View {
        if message.isCurrentUser {
            HStack{
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
            }
        } else {
            HStack{
                Image("ColonelSanders")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 50, height: 50)
                    .cornerRadius(28)
                    .padding(.leading)
                
                Text(message.messageText)
                    .padding()
                    .background(Color(.systemGray4))
                    .clipShape(ChatBubble(isFromCurrentUser: false))
                    .foregroundColor(Color.black)
                    .padding(.leading)
                
                Spacer()
            }
        }
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[2])
    }
}
