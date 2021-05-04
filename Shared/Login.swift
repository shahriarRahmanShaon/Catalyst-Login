//
//  Login.swift
//  Catalyst Login (iOS)
//
//  Created by sergio shaon on 4/5/21.
//

import SwiftUI
struct Login: View {
    @EnvironmentObject var loginDataHolder: LoginViewModel
    var body: some View{
       
            
            VStack(alignment: .leading){
                Text("Please Login")
                    .foregroundColor(.orange)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding([.leading,.bottom], 15)
                
                Label(
                    title: { TextField("Enter your Email", text: $loginDataHolder.email)
                        .textFieldStyle(PlainTextFieldStyle())
                        
                    },
                    icon: { Image(systemName: "envelope.fill") }
                )
                .padding()
                Divider()
                    .padding(.horizontal, 15)
                
                Label(
                    title: {
                        TextField("Password", text: $loginDataHolder.password)
                            .textFieldStyle(PlainTextFieldStyle())
                        
                        
                    }
                    ,
                    icon: { Image(systemName: "lock.fill") }
                )
                .padding()
                Divider()
                    .padding(.horizontal, 15)
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot Password?")
                            .foregroundColor(Color.gray)
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    Spacer()
                    Button(action: {
                        withAnimation {
                            loginDataHolder.goToRegister.toggle()
                            
                            
                        }
                    }, label: {
                        Text("Create account")
                            .foregroundColor(.orange)
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                }
                
                
            }
            .modifier(VstackModifier())
   
}

}
