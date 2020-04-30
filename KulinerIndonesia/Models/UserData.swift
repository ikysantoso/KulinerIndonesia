//
//  UserData.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 25/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var kuliners = kulinerData
}


