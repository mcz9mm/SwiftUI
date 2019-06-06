//
//  AnySubscription.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import Combine

final class AnySubscription: Subscription {
    private let cancellable: Cancellable

    init(_ cancel: @escaping () -> Void) {
        cancellable = AnyCancellable(cancel)
    }

    func request(_ demand: Subscribers.Demand) {}

    func cancel() {
        cancellable.cancel()
    }
}
