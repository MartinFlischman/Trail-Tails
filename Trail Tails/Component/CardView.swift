//
//  CardView.swift
//  Trail Tails
//
//  Created by Martin on 2024/09/20.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - Card
        
        ZStack {
            CustomBackgroundView()
            
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.customIndigoMedium,
                                Color.customSalmonLight
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 256, height: 256)
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        } //: Card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
