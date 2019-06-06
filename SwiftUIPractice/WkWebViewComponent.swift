//
//  WkWebViewComponent.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI

struct WkWebViewComponent : UIViewControllerRepresentable {

    var url: URL

    var controller: UIViewController

    func makeUIViewController(context: Context) -> WebViewController {
        let viewController = WebViewController.make(with: url)
        return viewController
    }

    func updateUIViewController(_ viewController: WebViewController, context: Context) {
        viewController.webView.reload()
    }
}
