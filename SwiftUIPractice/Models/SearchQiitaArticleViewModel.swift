//
//  SearchQiitaArticleViewModel.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI
import Combine

final class SearchQiitaArticleViewModel: BindableObject {

    var didChange = PassthroughSubject<SearchQiitaArticleViewModel, Never>()

    private(set) var articles = [QiitaArticle]() {
        didSet {
            didChange.send(self)
        }
    }

    private var cancellable: Cancellable? {
        didSet {
            oldValue?.cancel()
        }
    }

    func search(userId: String) {

        guard !userId.isEmpty else {
            return articles = []
        }

        var urlComponent = URLComponents(string: "https://qiita.com/api/v2/users/" + userId + "/items")!
        urlComponent.queryItems = [
            URLQueryItem(name: "page", value: "1"),
            URLQueryItem(name: "per_page", value: "20")
        ]

        var request = URLRequest(url: urlComponent.url!)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let assign = Subscribers.Assign(object: self, keyPath: \.articles)
        cancellable = assign
        URLSession.shared.send(request: request)
            .map { $0.data }
            .decode(type: [QiitaArticle].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .receive(subscriber: assign)
    }
}
