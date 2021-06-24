//
//  OnboardingViewPart2.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/23/21.
//

import SwiftUI

struct OnboardingViewPart2: View {
    
    @State var displayName: String = "";
    @State var showImagePicker: Bool = false;
    
    // MARK: IMAGE PICKER
    @State var imageSelected = UIImage(named: "logo")!;
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary;
    
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Text("What's your name?")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.MyTheme.yellowColor)
            
            
            TextField("Add your name here...", text: $displayName)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.MyTheme.beigeColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
                .padding(.horizontal)
            
            
            Button(action: {
                showImagePicker.toggle()
            }, label: {
                Text("Finish: Add profile picture")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.yellowColor)
                    .cornerRadius(12)
                    .padding(.horizontal)
            })
            .accentColor(Color.MyTheme.purpleColor)
            .opacity(displayName != "" ? 1.0 : 0.0)
            .animation(.easeInOut(duration: 0.4))
            
            
            
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .padding()
        .background(Color.MyTheme.purpleColor)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .sheet(isPresented: $showImagePicker, onDismiss: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=On Dismiss@*/{ }/*@END_MENU_TOKEN@*/, content: {
            ImagePicker(imageSelected: $imageSelected, sourceType: $sourceType)
        })
        
    }
    
    
    // MARK: FUNCTIONS
    
    func createProfile() {
        print("createProfile")
    }
    
    
}

struct OnboardingViewPart2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewPart2()
    }
}
