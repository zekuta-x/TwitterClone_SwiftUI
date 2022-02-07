//
//  ConversationsView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/03.
//

import SwiftUI

struct ConversationsView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                VStack{
                    ForEach(0..<20) { _ in
                        NavigationLink(
                            destination: Text("Destination"),
                            label: {
                                ConversationsCell()
                            })
                        Divider()
                    }
                }.padding()
            }
            
            Button(action: {}, label: {
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
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
