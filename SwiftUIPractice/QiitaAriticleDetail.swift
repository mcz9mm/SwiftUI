//
//  QiitaAriticleDetail.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI
import WebKit

struct QiitaAriticleDetail<Article : View>: View {

    public var url: URL?

    public var viewController: UIHostingController<Article>

    init(_ view: Article, url: URL) {
        self.viewController = UIHostingController(rootView: view)
        self.url = url
    }

    var body: some View {
        WkWebViewComponent(url: url ?? URL(string: "https://www.google.co.jp/")!, controller: viewController)
        .navigationBarTitle(Text("Detail"))
    }
}
