//
//  SADashboardSectionDisplayModel.swift
//  ScannerApp
//
//  Created by Akhil Verma on 13/09/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import Foundation

class SADashboardSectionDisplayModel {
    let title: String
    let toolbarIcon: String
    let attachmentType: SAAttachmentsType
    
    init(title: String, toolbarIcon: String, attachmentType: SAAttachmentsType) {
        self.title = title
        self.toolbarIcon = toolbarIcon
        self.attachmentType = attachmentType
    }
}
