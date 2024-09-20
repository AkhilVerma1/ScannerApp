//
//  SADocumentScannerView.swift
//  ScannerApp
//
//  Created by Akhil Verma on 15/09/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI
import VisionKit
import Foundation

struct SADocumentScannerView: UIViewControllerRepresentable {
    @Binding var scannedImages: [UIImage]

    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
        let scannerViewController = VNDocumentCameraViewController()
        scannerViewController.delegate = context.coordinator
        return scannerViewController
    }

    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    final class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate, Sendable {
        private let parent: SADocumentScannerView

        init(_ parent: SADocumentScannerView) {
            self.parent = parent
        }

        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
            var scannedImages: [UIImage] = []
            for pageIndex in 0..<scan.pageCount {
                let scannedImage = scan.imageOfPage(at: pageIndex)
                scannedImages.append(scannedImage)
            }
            DispatchQueue.main.async { [weak self] in
                self?.parent.scannedImages = scannedImages
                controller.dismiss(animated: true)
            }
        }
    }
}
