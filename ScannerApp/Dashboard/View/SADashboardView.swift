//
//  SADashboardView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 30/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct SADashboardView: View {

    @StateObject var viewModel: SADashboardViewModel
    
    var body: some View {
        NavigationStack {
            List {
                SAChipsView(selectedTagIdx: $viewModel.selectedTagIdx, tags: viewModel.getTags())
                
                Section {
                    SADashboardCellView(image: .L_1)
                    SADashboardCellView(image: .L_2)
                } header: {
                    HStack {
                        Text("Today \(viewModel.getSelectedTagTitle(viewModel.selectedTagIdx))")
                        
                        Spacer()
                        
                        Text("2")
                    }
                }
                
                Section {
                    SADashboardCellView(image: .L_1)
                    SADashboardCellView(image: .L_2)
                    SADashboardCellView(image: .L_1)
                } header: {
                    HStack {
                        Text("Yesterday \(viewModel.getSelectedTagTitle(viewModel.selectedTagIdx))")
                        
                        Spacer()
                        
                        Text("3")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Dashboard")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        Text("Camera Icon")
                    } label: {
                        Image(systemName: viewModel.getCameraIcon(viewModel.selectedTagIdx))
                            .foregroundStyle(Color.appColor)
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        Text("Add Filters")
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .foregroundStyle(Color.appColor)
                    }
                }
            }
            .searchable(text: $viewModel.searchText)
        }
    }
}

#Preview { SADashboardView(viewModel: .init()) }

extension Color {
    static var appColor: Color { .purple.mix(with: .blue, by: 0.8) }
}


