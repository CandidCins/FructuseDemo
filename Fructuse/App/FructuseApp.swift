//
//  FructuseApp.swift
//  Fructuse
//
//  Created by DJ on 5/5/21.
//

import SwiftUI

@main
struct FructuseApp: App {
    @AppStorage("isOnboarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
            OnboardingView()
            } else {
                ContentView()
                
            }
        }
    }
}
