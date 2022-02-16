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
                    .padding(.bottom, 32)
                
                VStack(spacing: 20){
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 32)
                
                HStack{
                    Spacer()
                    Button(action: {}, label: {
                        Text("forgot password?")
                            .foregroundColor(.white)
                            .font(.footnote)
                            .bold()
                            .padding(.top, 10)
                            .padding(.trailing, 30)
                    })
                }
                
                Button(action: {}, label: {
                    Text("Sign in")
                        .bold()
                        .frame(width: 360, height: 45)
                        .background(Color.white)
                        .clipShape(Capsule())
                })
                .padding()
                
                Spacer()
                
                HStack{
                    Text("Don't have an account?")
                        .foregroundColor(.white)
                    
                    Button(action: {}, label: {
                        Text("Sign up")
                            .bold()
                            .foregroundColor(.white)
                    })
                }
                .padding(.bottom, 40)
                
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
