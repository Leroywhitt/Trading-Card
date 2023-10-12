//
//  SplashView.swift
//  Trading Card
//
//  Created by Leroy Whitt on 10/12/23.
//

import SwiftUI
import EffectsLibrary

struct SplashView: View {
//    @State private var showFlames = false
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
            } else {
                FireView()
                            .edgesIgnoringSafeArea(.all)
                            .frame(width: 1500)
                            .scaleEffect(CGSize(width: 1, height: 5.0))
                            .offset(y:325)
                }
            
                    }
            
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }

    }
}

#Preview {
    SplashView()
}
