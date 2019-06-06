//
//  QiitaList.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI

struct QiitaList : View {
    @EnvironmentObject var viewModel: SearchQiitaArticleViewModel
    @State var text = "kaoryuuu"

    var page = 0
    var pageCount = 20

    var body: some View {
        NavigationView {
            VStack {
                CustomSearchBar(text: $text) {
                    self.viewModel.search(userId: self.text)
                }

                List(viewModel.articles) { article in

                    NavigationButton(destination: QiitaAriticleDetail(self, url: article.url)) {
                        QiitaListRow(model: article)
                    }

                }
            }
            .navigationBarTitle(Text("Articles"),
                                displayMode: .large)

        }
    }
}

#if DEBUG
struct QiitaList_Previews : PreviewProvider {
    static var previews: some View {
        QiitaList()
    }
}
#endif
