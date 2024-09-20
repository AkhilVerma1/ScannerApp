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
    
    private var sections: [SADashboardSectionDisplayModel] = []
    
    init() {
        sections = getSections()
    }
    
    func getCameraIcon(_ selectedTag: Int) -> String {
        sections[selectedTag].toolbarIcon
    }
    
    func getSelectedTagTitle(_ selectedTag: Int) -> String {
        sections[selectedTag].title
    }
    
    func getTags() -> [SATagsViewDisplayModel] {
        [
            SATagsViewDisplayModel(title: "Photos", image: "photo", defaultImageColor: .gray),
            SATagsViewDisplayModel(title: "Documents", image: "document", defaultImageColor: .gray)
        ]
    }
}

private extension SADashboardViewModel {
    
    func getSections() -> [SADashboardSectionDisplayModel] {
        [
            SADashboardSectionDisplayModel(title: SAAttachmentsType.photos.rawValue, toolbarIcon: "camera", attachmentType: .photos),
            SADashboardSectionDisplayModel(title: SAAttachmentsType.documents.rawValue, toolbarIcon: "doc.viewfinder", attachmentType: .documents)
        ]
    }
}
