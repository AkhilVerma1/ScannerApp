//
//  SAFetchAttachmentsThumbnailRepository.swift
//  ScannerApp
//
//  Created by Akhil Verma on 20/09/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import Foundation

protocol SAFetchAttachmentsThumbnailRepository {
    func fetchAttachmentsThumbnail() async throws -> [SADashboardAttachmentsThumbnailDisplayModel]
}

class SAOfflineFileManagerFetchAttachmentsThumbnailRepository: SAFetchAttachmentsThumbnailRepository {
    
    func fetchAttachmentsThumbnail() async throws -> [SADashboardAttachmentsThumbnailDisplayModel] {
        return [
            SADashboardAttachmentsThumbnailDisplayModel(mimeType: .image, fileName: "Image 1", isFavorite: false, attachmentID: UUID().uuidString),
            SADashboardAttachmentsThumbnailDisplayModel(mimeType: .image, fileName: "Image 2", isFavorite: true, attachmentID: UUID().uuidString),
            SADashboardAttachmentsThumbnailDisplayModel(mimeType: .document, fileName: "Document 2", isFavorite: true, attachmentID: UUID().uuidString)
        ]
    }
}

// Mark:- private SAOfflineFileManagerFetchAttachmentsThumbnailRepository extension
private extension SAOfflineFileManagerFetchAttachmentsThumbnailRepository {
    
    func getFileManager() -> FileManager {
        return FileManager.default
    }
    
    func getDefaultFileManagerPath() -> String {
        let fileManager = getFileManager()
        let path = fileManager.currentDirectoryPath
        return path
    }
}
