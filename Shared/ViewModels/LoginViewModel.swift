//
//  LoginViewModel.swift
//  Catalyst Login (iOS)
//
//  Created by sergio shaon on 4/5/21.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var goToRegister = true
    
}


