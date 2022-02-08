//
//  ChatView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/08.
//

import SwiftUI

struct ChatView: View {
    
    @State var messageText = ""
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 12){
                    ForEach(MOCK_MESSAGES){ message in
                        MessageView(message: message)
                    }
                }.padding(.top)
            }
            
            MessageInputView (messageText: $messageText)
                .padding()
            
        }
    }
    
    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
}
