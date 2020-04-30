//
//  KulinerList.swift
//  KulinerIndonesia
//
//  Created by iky's Macbook Pro on 25/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct KulinerList: View {
    
    @State var isProfileViewPresented = false
    
    var body: some View {
        NavigationView{
            VStack {
                List(kulinerData){
                    kuliner in NavigationLink(destination: ContentView(kuliner: kuliner)){
                        KulinerRow(kuliner: kuliner)
                        
                    }
                }
                NavigationLink(destination: profileSection()){
                    Image(systemName: "person.circle").imageScale(.large)
                }
                .navigationBarTitle(Text("Kuliner"),displayMode: .automatic)
                .buttonStyle(PlainButtonStyle())
            }
        }
    .phoneOnlyStackNavigationView()
    }
}
extension View {
    func phoneOnlyStackNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        } else {
            return AnyView(self)
        }
    }
}

struct KulinerList_Previews: PreviewProvider {
    static var previews: some View {
        KulinerList()
    }
}
