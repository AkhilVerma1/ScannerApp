//
//  SASettingsView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 30/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct SASettingsView: View {
    @StateObject var viewModel: SASettingsViewModel
    
    var body: some View {
        NavigationStack {
            List{
                Button {
                    viewModel.didTapClearAllDataBtn()
                } label: {
                    Text("Clear All Data")
                }
                .tint(.red)

            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SASettingsView(viewModel: .init())
}

