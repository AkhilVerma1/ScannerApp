//
//  SATagView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 31/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct SATagView: View {
    var isSelected: Bool

    let tag: SATagsViewDisplayModel
    let selectedTagColor: Color = Color.appColor
    
    private let defaultPadding: CGFloat = 10
    private let defaultCornerRadius: CGFloat = 10
    
    var body: some View {
        Label(tag.title, systemImage: tag.image)
            .font(.headline)
            .padding(defaultPadding)
            .foregroundStyle(isSelected ? selectedTagColor : tag.defaultImageColor)
            .background(isSelected ? selectedTagColor.opacity(0.2) : tag.defaultImageColor.opacity(0.2))
            .clipShape(.rect(cornerRadius: defaultCornerRadius))
    }
}


#Preview {
    SATagView(isSelected: true, tag: SATagsViewDisplayModel(title: "Tag", image: "tag.circle.fill", defaultImageColor: .red))
}
