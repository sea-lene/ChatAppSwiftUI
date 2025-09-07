//
//  SignUpView.swift
//  ChatApp
//
//  Created by Suhanee on 07/09/25.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var nickName: String = ""
    @State private var password: String = ""
    @FocusState private var isEmailFocused: Bool
    @FocusState private var isPswFocused: Bool
    @FocusState private var isNameFocused: Bool
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                //image logo
                Image(systemName: "bird")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.secondary300)
                    .padding(.vertical, 16)
                
                Text("Yo , Looking for me ?")
                    .font(.title)
                    .foregroundColor(.secondary500)
                    .padding(.vertical, 4)
                
                Text("Sign up quick and I'll wing your sweet messages to the right one ; )")
                    .font(.subheadline)
                    .foregroundColor(.secondary300)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    
                //textfields
                VStack (alignment: .trailing, spacing: 28){
                    ZStack (alignment: .top){
                        
                        HStack (spacing: 8 ){
                            Image(systemName: "envelope")
                                .foregroundColor(.tertiary500)
                            
                            TextField( "", text: $email)
                                .textContentType(.emailAddress)
                                .focused($isEmailFocused)
                                .animation(.easeInOut(duration: 0.2), value: isEmailFocused)
                        }
                        .padding(12)
                        
                        HStack{
                            Text(" Email * ")
                                .foregroundColor(.secondary)
                                .background()
                                .padding(.top, -12)
                                .padding(.leading, 12)
                            Spacer()
                        }
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke( isEmailFocused ? .primary500 : .tertiary200, lineWidth: 2)
                            .background(.white)
                    )
                    
                    
                    ZStack (alignment: .top){
                        
                        HStack (spacing: 8 ){
                            Image(systemName: "person")
                                .foregroundColor(.tertiary500)
                            
                            TextField( "", text: $nickName)
                                .textContentType(.emailAddress)
                                .focused($isNameFocused)
                                .animation(.easeInOut(duration: 0.2), value: isNameFocused)
                        }
                        .padding(12)
                        
                        HStack{
                            Text(" Nick name * ")
                                .foregroundColor(.secondary)
                                .background()
                                .padding(.top, -12)
                                .padding(.leading, 12)
                            Spacer()
                        }
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke( isNameFocused ? .primary500 : .tertiary200, lineWidth: 2)
                            .background(.white)
                    )
                    
                    ZStack (alignment: .top){
                        HStack (spacing: 8 ){
                            Image(systemName: "lock")
                                .foregroundColor(.tertiary500)
                            
                            SecureField("", text: $password)
                                .textContentType(.emailAddress)
                                .focused($isPswFocused)
                                .animation(.easeInOut(duration: 0.2), value: isPswFocused)
                        }
                        .padding(12)
                        
                        HStack{
                            Text(" Password * ")
                                .foregroundColor(.secondary)
                                .background()
                                .padding(.top, -12)
                                .padding(.leading, 12)
                            Spacer()
                        }
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke( isPswFocused ? .primary500 : .tertiary200, lineWidth: 2)
                            .background(.white)
                    )
                    
                    
                   
                }
                .padding()
                

                //singup button
                Button{
                    
                }label: {
                        Text("Sign up")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(Color.primary300)
                        .cornerRadius(8)
                        .padding()
                    
                }
                
                Spacer()
                
                Divider()
                
                //back to login view
                Button{
                    dismiss()
                }label: {
                    Text("Already have an account? Sign In")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.secondary400)
                }
                .padding()
            }
            .background(.white)
        }
    }
}
#Preview {
    SignUpView()
}
