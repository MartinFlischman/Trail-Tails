//
//  CustomCircleView.swift
//  Trail Tails
//
//  Created by Martin on 2024/09/22.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        .customIndigoMedium,
                        .customSalmonLight
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
