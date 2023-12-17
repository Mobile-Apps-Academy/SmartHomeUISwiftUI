//
//  AnimatedBackground.swift
//  Smart Home UI
//
//  Created by Javid Shaikh on 16/12/23.
//

import SwiftUI

struct AnimatedBackground: View {
    @State private var startAnimation: Bool = true
    
    var body: some View {
        ZStack {
            Color.black
            LinearGradient(
                colors: [
                    .yellow.opacity(0.4),
                    .black
                ], 
                startPoint: startAnimation ? .topLeading : .bottomLeading,
                endPoint: startAnimation ? .bottomTrailing : .topTrailing
            )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    AnimatedBackground()
}
