//
//  FeedView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/9/21.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    var title: String
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            LazyVStack {
                ForEach(posts.dataArray, id: \.self) { post in
                    PostView(post: post, showHeaderAndFoother: true, addheartAnimationToView: true)
                }
            }
            

        })
        .navigationBarTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject(), title: "Feed Test")
        }
        
    }
}
