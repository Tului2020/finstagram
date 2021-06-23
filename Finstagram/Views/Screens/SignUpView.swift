//
//  SignUpView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/23/21.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            
            Spacer()
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
            
            Text("You're not signed in! 😢")
                .font(.largeTitle)
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .foregroundColor(Color.MyTheme.purpleColor)
            
            Text("Click the button below to create an account and join the fun!")
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            
            Button(action: {
//                Text("Sign Up Page Goes Here")
                
                
            }, label: {
                Text("Sign in / Sign up".uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(Color.MyTheme.purpleColor)
                    .cornerRadius(12)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            })
            Spacer()
            Spacer()
            
            
        })
        .padding(.all, 40)
        .background(Color.MyTheme.yellowColor)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
        
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
