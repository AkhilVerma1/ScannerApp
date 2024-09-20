//
//  SASettingsViewModel.swift
//  ScannerApp
//
//  Created by Akhil Verma on 04/09/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

class SASettingsViewModel: ObservableObject {
    @Published var text = "Hello, World!"
    
    @MainActor
    func didTapClearAllDataBtn() {
        debugPrint("Clear all data")
    }
}
