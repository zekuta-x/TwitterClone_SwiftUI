//
//  LoginView.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/10.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            VStack{
                Image("twitter-logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    .padding(.top, 88)
                
                VStack{
                    CustomTextField(text: $email, placeholder: Text("Email"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
        .background(Color(#colorLiteral(red: 0.1076875106, green: 0.6322041154, blue: 0.9512472749, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
