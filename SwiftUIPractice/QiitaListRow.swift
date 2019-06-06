//
//  QiitaListRow.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI

struct QiitaListRow : View {
    var model: QiitaArticle

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(model.title)
                HStack {
                    Text("Like Count")
                    Text(String(describing: model.likes_count))
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#if DEBUG
struct QiitaListRow_Previews : PreviewProvider {
    static var previews: some View {
        QiitaListRow(model: QiitaArticle(id: "001",
                                         title: "Foo",
                                         url: URL(string: "url")!,
                                         likes_count: 20,
                                         user: User(id: "mcz9mm", description: "foo", profile_image_url: URL(string: "url")!)
        ))
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
