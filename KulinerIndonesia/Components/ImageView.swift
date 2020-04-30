//
//  ImageView.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 24/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    var body: some View {
        image
        .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
            .shadow(radius: 2)
            .frame(width: 200, height: 150)
            .offset(y: -80)
        
        }
}
        
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("gudeg"))
    }
}

