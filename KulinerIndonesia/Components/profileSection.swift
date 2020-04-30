//
//  profileSection.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 25/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct profileSection: View {
    var body: some View {
        ScrollView{
            VStack {
                       Image("Iky")
                       .resizable()
                       .clipShape(Circle())
                           .frame(width: 280, height: 310)
                           .offset(y: 80)
                        
                       VStack {
                           Text("Dicky Santoso")
                            .padding(.top, 100)
                               .font(.title)
                           Image(systemName: "mail")
                           Text("ikysantoso1@gmail.com")
                               .font(.headline)
                               .fontWeight(.medium)
                       }
                   }
        }
       
    }
}

struct profileSection_Previews: PreviewProvider {
    static var previews: some View {
        profileSection()
    }
}
