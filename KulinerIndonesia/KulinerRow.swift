//
//  KulinerRow.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 25/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct KulinerRow: View {
    var kuliner: Kuliner
    
    var body: some View {
        HStack {
            kuliner.logo
                .resizable()
                .frame(width: 50, height: 50)
            Text(kuliner.name)
            Spacer()
        }
    }
}

struct KulinerRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            KulinerRow(kuliner: kulinerData[0])
            KulinerRow(kuliner: kulinerData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
