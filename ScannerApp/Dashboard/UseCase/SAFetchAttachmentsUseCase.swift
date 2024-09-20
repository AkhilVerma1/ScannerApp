//
//  SAFetchAttachmentsUseCase.swift
//  ScannerApp
//
//  Created by Akhil Verma on 20/09/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import Foundation

protocol SAFetchAttachmentsThumbnailUseCase {
    func execute() async throws -> [SADashboardAttachmentsThumbnailDisplayModel]
}

class SADashboardFetchAttachmentsThumbnailUseCase: SAFetchAttachmentsThumbnailUseCase {
    private let repository: SAFetchAttachmentsThumbnailRepository
    
    init(repository: SAFetchAttachmentsThumbnailRepository) {
        self.repository = repository
    }
    
    func execute() async throws -> [SADashboardAttachmentsThumbnailDisplayModel] {
        try await repository.fetchAttachmentsThumbnail()
    }
}

