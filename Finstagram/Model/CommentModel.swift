//
//  CommentModel.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/10/21.
//

import Foundation
import SwiftUI


struct CommentModel: Identifiable, Hashable {
    
    var id  = UUID()
    var commentID: String // ID for the comment in the DB
    var userID: String // ID for th euser in the DB
    var username: String // Username for the user in the DB
    var content: String // Actual comment itself
    var dateCreated: Date // date created
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    
    
}

