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
//    @Binding var isEditing: Bool
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
            ScrollView{
                SearchBar(text: $searchText)
                    .padding()
                
                VStack(alignment: .leading) {
                    ForEach(viewModel.users) { user in
                        HStack { Spacer() }
                        
                        Button(action: {
                            self.show.toggle()
                            self.startChat.toggle()
                        }, label: {
                            UserCell(user:user)
                        })
                    }
                }.padding(.leading)
            }
        }
}
