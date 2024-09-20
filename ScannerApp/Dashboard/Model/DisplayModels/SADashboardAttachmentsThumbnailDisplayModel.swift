//
//  SADashboardAttachmentsThumbnailDisplayModel.swift
//  ScannerApp
//
//  Created by Akhil Verma on 20/09/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import Foundation

class SADashboardAttachmentsThumbnailDisplayModel {
    let mimeType: SAMime
    let fileName: String
    let isFavorite: Bool
    let attachmentID: String
    
    init(mimeType: SAMime, fileName: String, isFavorite: Bool, attachmentID: String) {
        self.mimeType = mimeType
        self.fileName = fileName
        self.isFavorite = isFavorite
        self.attachmentID = attachmentID
    }
}
