//
//  WebViewController.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import UIKit
import WebKit

final class WebViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!

    var url: URL?

    static func make(with url: URL) -> WebViewController {
        let view = WebViewController()
        view.url = url
        return view
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // WKWebViewを生成
        webView = WKWebView(frame:CGRect(x:0, y:0, width:self.view.bounds.size.width, height:self.view.bounds.size.height))

        // URL設定
        guard let url = url else {
            return
        }
        let request = NSURLRequest(url: url)
        webView.load(request as URLRequest)
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
