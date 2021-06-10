//
//  FeedView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/9/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
//            PostView()


            
        })
        .navigationBarTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView()
        }
        
    }
}
