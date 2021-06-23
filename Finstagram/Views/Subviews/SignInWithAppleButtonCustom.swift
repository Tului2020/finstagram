//
//  SignInWithAppleButtonCustom.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/23/21.
//

import Foundation
import SwiftUI
import AuthenticationServices


struct SignInWithAppleButtonCustom: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(authorizationButtonType: .default, authorizationButtonStyle: .black)
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {}
}
