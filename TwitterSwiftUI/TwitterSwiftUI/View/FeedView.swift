//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/01.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingNewTweetView = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                VStack{
                    ForEach(0..<10) { _ in
                        TweetCell()
                    }
                }.padding()
            }
            
            Button(action: {
                viewModel.signOut()
//                isShowingNewTweetView.toggle()
            }, label: {
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding()
            })
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .fullScreenCover(isPresented: $isShowingNewTweetView) {
                    NewTweetView(isPresented: $isShowingNewTweetView)
                }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
