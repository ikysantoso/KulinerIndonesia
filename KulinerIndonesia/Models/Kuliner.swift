//
//  Kuliner.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 25/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct Kuliner: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var iconView: String
    var region: String
    var foodName: String
    var foodDesc: String
}


extension Kuliner {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
    
    var logo: Image {
        ImageStore.shared.image(name: iconView)
    }
}
