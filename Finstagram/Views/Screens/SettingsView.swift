//
//  SettingsView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/18/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode;
    @Environment(\.colorScheme) var colorScheme;
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                Text("Placeholder")
                
                // MARK: SECTION 1: FINSTAGRAM
                GroupBox(label: SettingsLabelView(labelText: "Finstagram", labelImage: "dot.radiowaves.left.and.right"), content: {
                    HStack(alignment: .center, spacing: 10, content: {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                            .cornerRadius(12)
                        
                        Text("Finstagram is the number one app for posting picture of your life and sharing them across the world with friends and family.")
                            .font(.footnote)
                    })
                })
                .padding()
                
                
                // MARK: SECTION 2: PROFILE
                GroupBox(label: SettingsLabelView(labelText: "Profile", labelImage: "person.fill"), content: {
                    NavigationLink(
                        destination: SettingsEditTextView(subimssionText: "Current Display Name", title: "Display Name", description: "You can edit your display name here. This will be seen bu other users on your profile and on your posts!", placeholder: "Your display name here..."),
                        label: {
                            SettingsRowView(leftIcon: "pencil", text: "Display Name", color: Color.MyTheme.purpleColor);
                        })
                    
                    
                    NavigationLink(
                        destination: SettingsEditTextView(subimssionText: "Current Bio here", title: "Profile Bio", description: "Your bio is a great place to let other users know a little about you.", placeholder: "Your bio name here..."),
                        label: {
                            SettingsRowView(leftIcon: "text.quote", text: "Bio", color: Color.MyTheme.purpleColor);
                        })
                    
                    NavigationLink(
                        destination: SettingsEditImageView(title: "Profile Picture", description: "Your profile picture will be shown on your profile and on your posts. Most users make it an image of themselves.", selectedImage: UIImage(named: "dog1")!),
                        label: {
                            SettingsRowView(leftIcon: "photo", text: "Profile Picture", color: Color.MyTheme.purpleColor);
                        })
                    
                    SettingsRowView(leftIcon: "figure.walk", text: "Sign Out", color: Color.MyTheme.purpleColor);
                    
                })
                .padding()
                
                
                // MARK: SECTION 3: APPLICATION
                
                GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                    
                    Button(action: {
                        openCustomURL(urlString: "https://www.google.com")
                    }, label: {
                        SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.MyTheme.yellowColor);
                    })
                    
                    Button(action: {
                        openCustomURL(urlString: "https://www.yahoo.com")

                    }, label: {
                        SettingsRowView(leftIcon: "folder.fill", text: "Terms and Conditions", color: Color.MyTheme.yellowColor);

                    })
                    
                    
                    Button(action: {
                        openCustomURL(urlString: "https://www.bing.com")

                    }, label: {
                        SettingsRowView(leftIcon: "globe", text: "Website", color: Color.MyTheme.yellowColor);
                    })
                    
                    
                })
                .padding()
                
                
                // MARK: SECTION 4: SIGNOFF
                GroupBox {
                    Text("Finstagram was made with love. \n All rights reserved. \n Tului Gantulga Inc. \n Copyright 2020 ??????")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }.padding()
                .padding(.bottom, 80)
                
                
                
            })
            .navigationBarTitle("Settngs")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "xmark")
                                            .font(.title)
                                    })
                                    .accentColor(.primary)
            )
        }
        .accentColor(colorScheme == .light ? Color.MyTheme.purpleColor : Color.MyTheme.yellowColor)
        
    }
    
    
    // MARK: FUNCTIONS
    
    func openCustomURL(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        
    }
    
    
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
