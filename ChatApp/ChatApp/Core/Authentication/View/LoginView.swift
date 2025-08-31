//
//  LoginView.swift
//  ChatApp
//
//  Created by Suhanee on 31/08/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                //image logo
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding()
                    
                //textfields
                VStack (alignment: .trailing, spacing: 8){
                    TextField( "Enter Your Email", text: $email)
                        .padding(8)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                        .textContentType(.emailAddress)
                    
                    SecureField("Enter Your Password", text: $password)
                        .padding(8)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                   
                }
                .padding()
                
                //forgot password
                Button{
                    
                }label: {
                    Text("forgot password?")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .clipShape(Rectangle())
                        .scaledToFill()
                        .background()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 16)
            
                
                //login button
                Button{
                    
                }label: {
                        Text("Login")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding()
                    
                }
                
                Spacer()
                
                Divider()
                //sign up link
                NavigationLink{
                    
                }label: {
                    Text("Don't have an account? Sign Up")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                .padding()
            }
        }
    }
}

#Preview {
    LoginView()
}
