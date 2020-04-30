//
//  ContentView.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 24/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    var kuliner: Kuliner
    var body: some View {
        ScrollView{
        VStack {
            VStack{
                IconView(image: kuliner.logo)
                Text(kuliner.name)
                    .font(.title)
                    .offset(y:50)
            }
            ImageView(image: kuliner.image)
                .offset(x:90, y:200)
                .frame(width: 80, height: 100)
            Spacer()
            VStack(alignment: .leading) {
                Text(kuliner.foodName)
                    .font(.headline)
                    .offset(x:20,y:20)
                    .padding(.bottom, 30)
                HStack(alignment: .center) {
                    Text(kuliner.foodDesc)
                        .font(.body)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.white, lineWidth: 2))
                        .offset(x: 5, y: 100)
                        .shadow(radius: 2)
                        
                    Spacer()
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(kuliner.name), displayMode: .inline)
    }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(kuliner: kulinerData[0])
    }
}
