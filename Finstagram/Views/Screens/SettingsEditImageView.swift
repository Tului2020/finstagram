//
//  SettingsEditImageView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/21/21.
//

import SwiftUI

struct SettingsEditImageView: View {
    @State var title: String;
    @State var description: String;
    @State var selectedImage: UIImage; //Image shown on this screen
    @State var showImagePicker: Bool = false;
    @State var sourceType: UIImagePickerController.SourceType = UIImagePickerController.SourceType.photoLibrary;
    
    var body: some View {
        VStack(alignment: .leading, spacing:20) {
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            
            Image(uiImage: selectedImage)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(12)

           
            
            Button(action: {
                showImagePicker.toggle()
                
            }, label: {
                Text("Import".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.yellowColor)
                    .cornerRadius(12)
            })
            .accentColor(Color.MyTheme.purpleColor)
            .sheet(isPresented: $showImagePicker, content: {
                ImagePicker(imageSelected: $selectedImage, sourceType: $sourceType)
            })
            
            
            Button(action: {
                
            }, label: {
                Text("Save".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.purpleColor)
                    .cornerRadius(12)
            })
            .accentColor(Color.MyTheme.yellowColor)
            
            Spacer();
            
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .navigationBarTitle(title)
    }
}

struct SettingsEditImageView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        NavigationView {
            SettingsEditImageView(title: "Title", description: "Desc", selectedImage: UIImage(named: "dog1")!)
        }

    }
}
