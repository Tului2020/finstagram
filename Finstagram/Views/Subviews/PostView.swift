//
//  PostView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/9/21.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel;
    var showHeaderAndFoother: Bool;
    @State var postImage: UIImage = UIImage(named: "dog1")!;
    
    @State var animateLike: Bool = false;
    @State var addheartAnimationToView: Bool;
    
//    @State var showActionSheet: Bool = false;
//    @State var actionSheetType: PostActionSheetOption = .general
    

    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
            
            // MARK: HEADER
            if (showHeaderAndFoother) {
                HStack {
                    
                    NavigationLink(
                        destination: ProfileView(isMyProfile: false, profileDisplayName: post.username, profileUserID: post.userID),
                        label: {
                            Image("dog1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(15)
                            Text(post.username)
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                        })
                    

                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all, 6)
            }
            
            
            
            // MARK: IMAGE
            
            ZStack {
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                
                if addheartAnimationToView {
                    LikeAnimationView(animate: $animateLike)
                }
            }.onTapGesture(count: 2) {
                post.likedByUser ? unlikePost() : likePost()
            }

            
            // MARK: FOOTER
            if (showHeaderAndFoother) {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    
                    Button(action: {
                        post.likedByUser ? unlikePost() : likePost()
                    }, label: {
                        Image(systemName: post.likedByUser ? "heart.fill" : "heart")
                            .font(.title3)
                    })
                    .accentColor(post.likedByUser ? .red : .primary)

                    
                    
                    
                    // MARK: COMMENT ICON
                    NavigationLink(
                        destination: CommentsView(),
                        label: {
                        Image(systemName: "bubble.middle.bottom")
                            .font(.title3)
                            .foregroundColor(.primary)
                    })
                    
                    
                    Image(systemName: "paperplane")
                        .font(.title3)
                    
                    Spacer()
                    
                })
                    .padding(.all, 6)
                
                
                if let caption = post.caption {
                    HStack {
                        Text(caption)
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.all, 6)
                }
            }
            
            
        })
    }
    
//    MARK: FUNCTIONS
    
    func likePost() {
        let updatedPost = PostModel(postID: post.postID, userID: post.userID, username: post.username, caption: post.caption, dateCreated: post.dateCreated, likeCount: post.likeCount + 1, likedByUser: true)
        self.post = updatedPost;
        animateLike = true;
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            animateLike.toggle()
        }
    }
    
    
    func unlikePost() {
        let updatedPost = PostModel(postID: post.postID, userID: post.userID, username: post.username, caption: post.caption, dateCreated: post.dateCreated, likeCount: post.likeCount - 1, likedByUser: false)
        self.post = updatedPost;
    }
    
    
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postID: "", userID: "", username: "Joe Green", caption: "This is a test caption", dateCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFoother: true, addheartAnimationToView: true)
            .previewLayout(.sizeThatFits)
    }
}
