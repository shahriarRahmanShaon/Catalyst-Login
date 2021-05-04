//
//  Catalyst_LoginApp.swift
//  Shared
//
//  Created by sergio shaon on 4/5/21.
//

import SwiftUI

@main
struct Catalyst_LoginApp: App {
    var body: some Scene {
        WindowGroup {
            Home()
                .environmentObject(LoginViewModel())
                .preferredColorScheme(.light)
        }
    }
}
