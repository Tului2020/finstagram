//
//  CarouselView.swift
//  Finstagram
//
//  Created by Tului Gantulga on 6/10/21.
//

import SwiftUI

struct CarouselView: View {
    
    @State var selection: Int = 0;
    @State var timerAdded: Bool = false;
    let maxCount: Int = 8;
    
    var body: some View {
        TabView(
            selection: $selection,
            content: {
            ForEach(1..<maxCount) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count - 1)
            }
            

        })
            .tabViewStyle(PageTabViewStyle())
            .frame(height: 300)
            .animation(.default)
            .onAppear(perform: {
                if !timerAdded {
                    addTimer()
                }
            })
    }
    
    // MARK: FUNCTIONS
    func addTimer() {
        timerAdded = true
        
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer)  in
            selection = (selection + 1) % (maxCount - 1)
        }
        
        timer.fire()
    }
    
    
    
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .previewLayout(.sizeThatFits)
    }
}
