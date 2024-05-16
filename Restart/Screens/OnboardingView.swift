//
//  OnboardingView.swift
//  Restart
//
//  Created by Jay B on 15/5/2567 BE.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all)
            VStack(spacing: 20) {
                // HEADER
                
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                        It's not how much we give but
                        how much love we put into giving.
                        """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } // END: HEADER
                // CENTER
                
                ZStack {
                    CircleGroupView(ShapeColor: .white, ShapeOpaciry: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } // END: CENTER
                
                 Spacer()
                
                // FOOTER
                
                ZStack {
                    
                    // BACKGROUND : STATIC
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    // CALL-TO-ACTION : STATIC
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    // CAPSULE : DYNAMIC WIDTH
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    // CIRCLE : DRAGABLE
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        Spacer()
                    }
                    
                } // END: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            } // END: VSTACK
        } // END: ZSTACK
    }
}

#Preview {
    OnboardingView()
}
