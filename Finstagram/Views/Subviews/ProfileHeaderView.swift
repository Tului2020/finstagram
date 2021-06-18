//
//  ProfileHeaderView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/18/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            
            // MARK: PROFILE PICTURE
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(60 )
            
            // MARK: USERNAME
            Text("Username here")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            // MARK: BIO
            Text("User bio area is here, you can add anything you'd like")
                .font(.body)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center, spacing: 20, content: {
                
                // MARK: POSTS
                VStack(alignment: .center, spacing: 5, content: {
                    Text("5")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Posts")
                        .font(.callout)
                        .fontWeight(.medium)
                })
                
                
                
                VStack(alignment: .center, spacing: 5, content: {
                    Text("20")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Likes")
                        .font(.callout)
                        .fontWeight(.medium)
                })
            })
            
            
        })
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
