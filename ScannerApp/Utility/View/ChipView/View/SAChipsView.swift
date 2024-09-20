//
//  SAChipsView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 30/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct SAChipsView: View {
    @Binding var selectedTagIdx: Int

    let tags: [SATagsViewDisplayModel]
    var selectedTagColor: Color = Color.appColor
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 15) {
                ForEach(Array(tags.enumerated()), id: \.offset) { idx, tag in
                    SATagView(isSelected: selectedTagIdx == idx, tag: tag)
                        .onTapGesture {
                            selectedTagIdx = idx
                        }
                }
            }
        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    @Previewable @State var selectedTagIdx: Int = 0
    SAChipsView(
        selectedTagIdx: $selectedTagIdx,
        tags: [
            SATagsViewDisplayModel(title: "Photos", image: "photo", defaultImageColor: .gray),
            SATagsViewDisplayModel(title: "Documents", image: "document", defaultImageColor: .gray)
        ]
    )
}

