//
//  MessageView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/10/21.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        HStack {
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Username")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text("This is a new comment here.")
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            
            Spacer()
            
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
            .previewLayout(.sizeThatFits)
    }
}
