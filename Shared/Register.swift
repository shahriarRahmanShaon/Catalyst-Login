//
//  Register.swift
//  Catalyst Login (iOS)
//
//  Created by sergio shaon on 4/5/21.
//

import SwiftUI

struct Register: View {
    @EnvironmentObject var loginDataHolder : LoginViewModel
    var body: some View {
        ZStack{
            Color.black.opacity(0.1).edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                HStack {
                    Button(action: {
                        withAnimation {
                            loginDataHolder.goToRegister.toggle()
                        }
                    }, label: {
                        Image(systemName: "arrow.left.circle.fill")
                            .font(.title)
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.black)
                    
                   
                    Text("Please Register")
                        .foregroundColor(.orange)
                        .font(.title2)
                        .fontWeight(.bold)
                        
                }
                .padding()
                .padding(.bottom, 20)
                
                
                Label(
                    title: { TextField("Enter your Email", text: $loginDataHolder.email)
                        .textFieldStyle(PlainTextFieldStyle())
                        
                    },
                    icon: { Image(systemName: "envelope.fill") }
                )
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                Divider()
                    .padding(.horizontal, 15)
                
                Label(
                    title: {
                        TextField("Enter", text: $loginDataHolder.password)
                            .textFieldStyle(PlainTextFieldStyle())
                        
                        
                    }
                    ,
                    icon: { Image(systemName: "lock.fill") }
                )
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                Divider()
                    .padding(.horizontal, 15)
                Label(
                    title: {
                        TextField("Re-Enter Password", text: $loginDataHolder.password)
                            .textFieldStyle(PlainTextFieldStyle())
                        
                        
                    }
                    ,
                    icon: { Image(systemName: "lock.fill") }
                )
                //.labelStyle(DefaultLabelStyle())
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                Divider()
                    .padding(.horizontal, 15)
                
            }
            .modifier(VstackModifier())
            .overlay(
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.right.circle.fill")
                        .font(.largeTitle)
                    
                })
                .buttonStyle(PlainButtonStyle())
                .offset(x: -50, y: 3)
                , alignment: .bottomTrailing
                
            )
            
            
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
            //.previewDevice("iPhone SE (2nd generation)")
            .environmentObject(LoginViewModel())
    }
}
