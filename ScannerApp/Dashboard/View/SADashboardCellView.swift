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
                .frame(width: 75)
                .clipShape(.rect(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text("Heading of the Image.jpg")
                        .font(.headline)
                        .lineLimit(1)
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

                // add location hstack
                
                HStack(spacing: 3) {
                    Image(systemName: "location.fill")
                        .foregroundStyle(Color.appColor)
                    
                    Text("Green Avenue, PB")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                HStack {
                    Text("JPEG / JPG")
                        .font(.caption2.weight(.semibold))
                        .padding(4)
                        .foregroundStyle(.orange)
                        .background(.orange.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 5))
                    
                    Spacer()
                    Text("1.28 MB")
                        .font(.subheadline)
                        .foregroundColor(Color.appColor)
                }
                
            }
            
            
        }
        .frame(height: 75)

    }
}

#Preview {
    SADashboardCellView(image: .L_1)
}
