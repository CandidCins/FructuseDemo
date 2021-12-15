//
//  OnboardingView.swift
//  Fructuse
//
//  Created by DJ on 5/8/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsdata
    
    //MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
             FructCardView(fruit: item)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


//MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsdata)
            .previewDevice("IPhone SE (2nd generation")
    }
}
