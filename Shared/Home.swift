//
//  Home.swift
//  Catalyst Login (iOS)
//
//  Created by sergio shaon on 4/5/21.
//

import SwiftUI

struct Home: View {
    //@State private var email = ""
    //@State private var password = ""
    @StateObject var loginDataHolder = LoginViewModel()
    
    var body: some View {
        ZStack{
            Color.black.opacity(0.1).edgesIgnoringSafeArea(.all)
            if loginDataHolder.goToRegister{
                Login()
                    
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
                    .transition(.move(edge: .bottom))
            }else{
                Register()
                    .transition(.move(edge: .bottom))
            }
        }
        
        .environmentObject(loginDataHolder)
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        Home(loginDataHolder: LoginViewModel())
    }
}
struct VstackModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .frame(maxWidth: .infinity, maxHeight: 500)
            .background(Color.white)
            .cornerRadius(20)
            .padding()
            .shadow(radius: 5 )
           
    }
    
    
}
