//
//  IconView.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 24/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct IconView: View {
    var image: Image
    var body: some View {
        image
        .resizable()
            .offset(y: 50)
               .frame(width: 200, height: 250)
       
                
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(image: Image("yogyakarta"))
    }
}
