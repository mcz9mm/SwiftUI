//
//  CustomSearchBar.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI

struct CustomSearchBar: View {
    @Binding var text: String
    @State var action: () -> Void

    var body: some View {
        ZStack {
            HStack {
                TextField(
                    $text,
                    placeholder: Text("@userId")
                        .color(Color.gray)
                    )
                    .padding([.leading, .trailing], 8)
                    .frame(height: 32)
                    .background(Color.white)
                    .cornerRadius(8)


                Button(
                    action: action,
                    label: {
                        Text("GET")
                            .color(.gray)
                }
                    )
                    .padding([.leading, .trailing], 4)
                    .frame(height: 32)
                    .foregroundColor(Color.white)
                    .background(Color.white)
                    .cornerRadius(8)
                }
                .padding([.leading, .trailing], 16)
            }
            .frame(height: 64)
            .background(Color.gray.opacity(0.3))
    }
}
