//
//  CircleImage.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/04.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("background")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
