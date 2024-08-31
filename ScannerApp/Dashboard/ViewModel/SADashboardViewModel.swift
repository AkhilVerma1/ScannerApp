//
//  SADashboardViewModel.swift
//  ScannerApp
//
//  Created by Akhil Verma on 31/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import Foundation

class SADashboardViewModel: ObservableObject {
    @Published var selectedTagIdx: Int = 0
    @Published var searchText: String = .init()

    private var sections: [SAAttachmentsType] = [.photos, .documents, .audio]
    
    func getCameraIcon(_ selectedTag: Int) -> String {
        sections[selectedTag] == .photos ? "camera" : "doc.viewfinder"
    }
    
    func getSelectedTagTitle(_ selectedTag: Int) -> String {
        sections[selectedTag].rawValue
    }
    
    func getTags() -> [SATagsViewDisplayModel] {
        [
            SATagsViewDisplayModel(title: "Photos", image: "photo", defaultImageColor: .gray),
            SATagsViewDisplayModel(title: "Documents", image: "document", defaultImageColor: .gray),
            SATagsViewDisplayModel(title: "Audio", image: "music.note", defaultImageColor: .gray)
        ]
    }
}
