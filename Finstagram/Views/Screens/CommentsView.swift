//
//  CommentsView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/10/21.
//

import SwiftUI



struct CommentsView: View {
    
    @State var submissionText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                Text("Comment1")
                Text("Comment2")
                Text("Comment3")
                Text("Comment4")
                Text("Comment5")
            }
            
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here...", text: $submissionText)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane.fill")
                })
                    .accentColor(Color.MyTheme.purpleColor)
            }
            .padding(.all, 6)
            
        }
        .navigationBarTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    }
}
