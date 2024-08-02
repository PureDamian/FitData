//
//  FitTabView.swift
//  FitData
//
//  Created by Deven Amador on 7/24/24.
//

import SwiftUI

struct FitTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = 
        [NSAttributedString.Key.foregroundColor: UIColor.label]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    
                    Text("charts")
                }
        }
    }
}

#Preview {
    FitTabView()
}
