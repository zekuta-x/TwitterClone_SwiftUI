//
//  Registration.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/10.
//

import SwiftUI

struct Registration: View {
    
    @State var fullname = ""
    @State var email = ""
    @State var username = ""
    @State var password = ""
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    func loadImage() {
        guard let selectedUIImage = selectedUIImage else { return }
        image = Image(uiImage: selectedUIImage)
    }
    
    var body: some View {
        ZStack {
            VStack{
                Button(action: { showImagePicker.toggle() }, label: {
                    ZStack {
                        if let image = image {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .clipped()
                                .cornerRadius(70)
                                .padding(.top, 88)
                                .padding(.bottom, 16)
                        } else {
                            Image("plus_photo")
                                .resizable()
                                .renderingMode(.template)
                                .scaledToFill()
                                .foregroundColor(.white)
                                .frame(width: 140, height: 140)
                                .padding(.top, 88)
                                .padding(.bottom, 16)
                        }
                    }
                }).sheet(isPresented: $showImagePicker, onDismiss: loadImage, content: {
                    ImagePicker(image: $selectedUIImage)
                })
                
                VStack(spacing: 20){
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $fullname, placeholder: Text("Fullname"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
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
                
                Button(action: {}, label: {
                    Text("Sign up")
                        .bold()
                        .frame(width: 360, height: 45)
                        .background(Color.white)
                        .clipShape(Capsule())
                })
                    .padding()
                
                Spacer()
                
                Button(action: {}, label: {
                    HStack{
                        Text("Already have an account?")
                            .foregroundColor(.white)
                        
                        Text("Sign in")
                            .bold()
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 40)
                    .onTapGesture {
                        mode.wrappedValue.dismiss()
                    }
                })
            }
        }
        .background(Color(#colorLiteral(red: 0.1076875106, green: 0.6322041154, blue: 0.9512472749, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
