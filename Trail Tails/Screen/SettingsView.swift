//
//  SettingsView.swift
//  Trail Tails
//
//  Created by Martin on 2024/09/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - Section: Header
            
            Section {
                HStack {
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Trail Tails")
                            .font(.system(size: 40, weight: .black))
                            .padding(.bottom, 6)
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect trails?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos, but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off your boots... \nIt's time for a new adventure!")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            // MARK: - Section: Icons
            
            
            // MARK: - Section: About
            
            Section(
                header: Text("About The App"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All rights reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
        
                CustomListRowView(rowTintColor: .mint, rowIcon: "apps.iphone", rowLabel: "Application", rowContent: "Trail Tails")
                
                CustomListRowView(rowTintColor: .pink, rowIcon: "gear", rowLabel: "Version", rowContent: "1.0")
                
                CustomListRowView(rowTintColor: .gray, rowIcon: "info.circle", rowLabel: "Compatibility", rowContent: "iOS & iPadOS 17.6+")
                
                CustomListRowView(rowTintColor: .orange, rowIcon: "swift", rowLabel: "Technology", rowContent: "Swift")
                
                CustomListRowView(rowTintColor: .purple, rowIcon: "ellipsis.curlybraces", rowLabel: "Developer", rowContent: "Martin Flischman")
                
                CustomListRowView(rowTintColor: .green, rowIcon: "paintpalette", rowLabel: "Designer", rowContent: "Robert Petras")
                
                CustomListRowView(rowTintColor: .blue, rowIcon: "globe", rowLabel: "Website", rowLinkLabel: "Trail Tails", rowLinkDestination: "https://github.com/MartinFlischman/Trail-Tails")
                
            }
        }
    }
}

#Preview {
    SettingsView()
}
