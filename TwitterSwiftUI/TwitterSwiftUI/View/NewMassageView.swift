//
//  NewMassageView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/08.
//

import SwiftUI

struct NewMassageView: View {
    
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    
    var body: some View {
            ScrollView{
                SearchBar(text: $searchText)
                    .padding()
                
                VStack(alignment: .leading) {
                    ForEach(0..<10) { _ in
                        HStack { Spacer() }
                        
                        Button(action: {
                            self.show.toggle()
                            self.startChat.toggle()
                        }, label: {
                            UserCell()
                        })
                        
                    }
                }.padding(.leading)
            }
        }
}

struct NewMassageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMassageView(show: .constant(true), startChat: .constant(true))
    }
}
