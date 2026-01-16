import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://campus-wall.pages.dev/")!)
            .edgesIgnoringSafeArea(.all)
    }
}
