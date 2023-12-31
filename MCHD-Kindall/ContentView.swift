//
//  ContentView.swift
//  MCHD-Kindall
//
//  Created by Melissa Minuth on 10/13/23.
//

import SwiftUI
import WebKit
struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "https://mchitdogsteam.com"
    var body: some View {
        VStack(spacing: 40) {
            WebView(url: URL(string: urlString)!).frame(height: 900.0)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius:20.0, x: 5, y: 5)
                
            
        }
        .padding()
    }
}
struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request  = URLRequest(url: url)
        uiView.load(request)
    }
    
    #Preview {
        ContentView()
    }
}
