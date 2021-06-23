//
//  ContentView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    
    var currentUserID: String? = nil;
    
    
    
    var body: some View {
        TabView {
            NavigationView {
                FeedView(posts: PostArrayObject(), title: "Feed")
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Feed")
            }
            
            
            NavigationView {
                BrowseView()
            }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
            
            NavigationView {
                UploadView()
            }
            .tabItem {
                Image(systemName: "square.and.arrow.up.fill")
                Text("Upload")
            }
            
            ZStack {
                
                if (currentUserID != nil) {
                    NavigationView {
                        ProfileView(isMyProfile: true, profileDisplayName: "My Profile", profileUserID: "")
                    }
                } else {
                    NavigationView {
                        SignUpView();
                    }
                }
                

            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .accentColor(Color.MyTheme.purpleColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
