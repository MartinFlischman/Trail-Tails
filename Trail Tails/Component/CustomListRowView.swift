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
    @State var rowContent: String? = nil
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.blue)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
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
            rowIcon: "globe",
            rowLabel: "Website",
            rowContent: nil,
            rowLinkLabel: "Trail Tails",
            rowLinkDestination: "https://github.com/MartinFlischman/Trail-Tails"
        )
    }
}
