//
//  SATabbarView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 30/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct SATabbarView: View {
    var body: some View {
        TabView {
            SADashboardView(viewModel: .init())
                .tabItem {
                    Label("Dashboard", systemImage: "house")
                }
            
            SASettingsView(viewModel: .init())
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
        .tint(Color.appColor)
    }
}

#Preview {
    SATabbarView()
}
