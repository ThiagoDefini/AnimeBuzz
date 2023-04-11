//
//  tabViewScreen.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 11/04/23.
//

import SwiftUI

struct tabViewScreen: View {
    var body: some View {
        TabView{
            //adicionar o nome certo das views quando prontas
            ContentView()
                .tabItem(){
                    VStack{
                        Image(systemName: "newspaper.fill")
                        Text("Noticias")
                    }
                }
            ContentView()
                .tabItem(){
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Favoritos")
                    }
                }
            ContentView()
                .tabItem(){
                    VStack{
                        Image(systemName: "calendar.badge.clock")
                        Text("Cronograma")
                    }
                }
            ContentView()
                .tabItem(){
                    VStack{
                        Image(systemName: "map.fill")
                        Text("Mapa")
                    }
                }
        }
        .accentColor(.green)
        .onAppear(){
            UITabBar.appearance().backgroundColor = UIColor.black
            UITabBar.appearance().unselectedItemTintColor = UIColor.white
                
        }
    }
}

struct tabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        tabViewScreen()
    }
}
