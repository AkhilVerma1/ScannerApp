//
//  SADashboardCellView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 31/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//


import SwiftUI

struct SADashboardCellView: View {
    
    let image: ImageResource
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .font(.title)
                .frame(width: 70, height: 70)
                .clipShape(.rect(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text("heading-of-the-image.jpg")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    if [true, false].randomElement() ?? false {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundStyle(.yellow)
                    }

                }
                Text("\(Date.now.formatted())")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("# JPEG / JPG")
                        .font(.caption2.weight(.medium))
                        .padding(4)
                        .foregroundStyle(.orange)
                        .background(.orange.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 5))
                    
                    
                    Text("# Offline")
                        .font(.caption2.weight(.medium))
                        .padding(4)
                        .foregroundStyle(.gray)
                        .background(.gray.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 5))
                    
                    Spacer()
                    Text("1.28 MB")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
                
            }
            
            
            
        }
    }
}

#Preview {
    SADashboardCellView(image: .L_1)
}
