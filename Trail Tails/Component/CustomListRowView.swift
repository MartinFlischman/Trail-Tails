//
//  CustomListRowView.swift
//  Trail Tails
//
//  Created by Martin on 2024/09/27.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - Properties
    
    @State var rowTintColor: Color
    @State var rowIcon: String
    @State var rowLabel: String
    @State var rowContent: String
    
    var body: some View {
        LabeledContent {
            // Content
            Text(rowContent)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowTintColor: .blue,
            rowIcon: "paintpalette",
            rowLabel: "Designer",
            rowContent: "Jack Frost"
        )
    }
}
