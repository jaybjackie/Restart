//
//  ContentView.swift
//  Restart
//
//  Created by Jay B on 15/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        } // END: ZSTACK
    }
}

#Preview {
    ContentView()
}
