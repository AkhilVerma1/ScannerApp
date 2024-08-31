//
//  SADashboardView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 30/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct SADashboardView: View {
    @State private var selectedTagIdx: Int = 0
    
    private func getTags() -> [SATagsViewDisplayModel] {
        [
            SATagsViewDisplayModel(title: "Photos", image: "photo", defaultImageColor: .gray),
            SATagsViewDisplayModel(title: "Documents", image: "document", defaultImageColor: .gray)
        ]
    }
    
    var body: some View {
        NavigationStack {
            List {
                SAChipsView(selectedTagIdx: $selectedTagIdx, tags: getTags())
                
                Section("Selected Attachment: \(getTags()[selectedTagIdx].title)") {
                    
                    HStack {
                        Image(.L_1)
                            .resizable()
                            .font(.title)
                            .frame(width: 50, height: 50)
                            .clipShape(.rect(cornerRadius: 5))
                        
                        VStack(alignment: .leading) {
                            Text("heading-of-the-image.jpg")
                                .font(.headline)
                                .foregroundColor(.primary)
                            
                            HStack {
                                Text("\(Date.now.formatted())")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                                
                                Spacer()
                                Text("1.2 MB")
                                    .font(.subheadline)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    
                    
                    HStack {
                        Image(.L_2)
                            .resizable()
                            .font(.title)
                            .foregroundStyle(.indigo)
                            .frame(width: 50, height: 50)
                            .clipShape(.rect(cornerRadius: 5))
                        
                        VStack(alignment: .leading) {
                            Text("heading-of-the-image.jpg")
                                .font(.headline)
                                .foregroundColor(.primary)
                            
                            HStack {
                                Text("\(Date.now.formatted())")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                                Spacer()
                                Text("4.6 MB")
                                    .font(.subheadline)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    
                    
                    HStack {
                        Image(.L_1)
                            .resizable()
                            .font(.title)
                            .frame(width: 50, height: 50)
                            .clipShape(.rect(cornerRadius: 5))
                        
                        VStack(alignment: .leading) {
                            Text("heading-of-the-image.jpg")
                                .font(.headline)
                                .foregroundColor(.primary)
                            
                            HStack {
                                Text("\(Date.now.formatted())")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                                
                                Spacer()
                                Text("200 KB")
                                    .font(.subheadline)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Dashboard")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "camera")
                        .foregroundStyle(Color.appColor)
                }
            }
        }
    }
}

#Preview { SADashboardView() }

extension Color {
    static var appColor: Color { .purple.mix(with: .blue, by: 0.8) }
}
