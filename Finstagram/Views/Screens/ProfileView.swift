//
//  ProfileView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/18/21.
//

import SwiftUI

struct ProfileView: View {
    
    var isMyProfile: Bool;
    @State var profileDisplayName: String;
    var profileUserID: String;
    var posts = PostArrayObject();
    @State var settingsShown: Bool = false
    
    
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            ProfileHeaderView(profileDisplayName: $profileDisplayName);
            Divider();
            ImageGridView(posts: posts);
            
        })
        .navigationBarTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
                                    settingsShown = true
                                }, label: {
                                    Image(systemName: "line.horizontal.3")
                                })
                                .accentColor(Color.MyTheme.purpleColor)
                                .opacity(isMyProfile ? 1.0 : 0.0)
        )
        .sheet(isPresented: $settingsShown, content: {
            SettingsView()
        })
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView(isMyProfile: true, profileDisplayName: "Joe Green", profileUserID: "")
        }
        
    }
}
