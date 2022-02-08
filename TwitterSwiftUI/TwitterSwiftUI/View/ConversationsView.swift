//
//  ConversationsView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/03.
//

import SwiftUI

struct ConversationsView: View {
    
    @State var isShowingNewMessageView = false
    @State var showChat = true
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {})
            
            ScrollView{
                VStack{
                    ForEach(0..<20) { _ in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationsCell()
                            })
                        Divider()
                    }
                }.padding()
            }
            
            Button(action: {self.isShowingNewMessageView.toggle() // bool値の反転
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .sheet(isPresented: $isShowingNewMessageView, content: {
                    NewMassageView(show: $isShowingNewMessageView, startChat: $showChat)
                })
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
