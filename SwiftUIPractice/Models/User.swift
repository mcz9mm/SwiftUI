//
//  User.swift
//  SwiftUIPractice
//
//  Created by MataraiKaoru on 2019/06/06.
//  Copyright © 2019 MataraiKaoru. All rights reserved.
//

import SwiftUI

struct User: Hashable, Codable {

    var id: String
    var description: String
    var profile_image_url: URL
}
