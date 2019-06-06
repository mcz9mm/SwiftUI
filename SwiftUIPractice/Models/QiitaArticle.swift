//
//  QiitaArticle.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI

struct QiitaArticle: Hashable, Codable, Identifiable {

    var id: String
    var title: String
    var url: URL
    var likes_count: Int
    var user: User
}
