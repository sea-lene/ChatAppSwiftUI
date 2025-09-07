//
//  File.swift
//  ChatApp
//
//  Created by Suhanee on 07/09/25.
//

import SwiftUI
import WebKit

struct GIFView: UIViewRepresentable {
    let gifName: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.isScrollEnabled = false
        webView.isOpaque = false
        webView.backgroundColor = .clear
        webView.scrollView.backgroundColor = .clear
        if let path = Bundle.main.path(forResource: gifName, ofType: "gif") {
            let gifData = try? Data(contentsOf: URL(fileURLWithPath: path))
            webView.load(
                gifData ?? Data(),
                mimeType: "image/gif",
                characterEncodingName: "UTF-8",
                baseURL: URL(fileURLWithPath: "")
            )
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
