//
//  PostModel.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/9/21.
//

import Foundation
import SwiftUI


struct PostModel: Identifiable, Hashable {
    
    var id  = UUID()
    var postID: String // ID for the post in DB
    var userID: String // ID for the user in DB
    var username: String // Username of user in DB
    var caption: String?
    var dateCreate: Date
    var likeCount: Int
    var likedByUser: Bool
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    
    
}




