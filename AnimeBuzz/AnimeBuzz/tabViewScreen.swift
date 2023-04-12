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
                        Icons().noticias
                        Text("Noticias")
                    }
                }
            ContentView()
                .tabItem(){
                    VStack{
                        Icons().estrela
                        Text("Favoritos")
                    }
                }
            ContentView()
                .tabItem(){
                    VStack{
                        Icons().calendario
                        Text("Cronograma")
                    }
                }
            ContentView()
                .tabItem(){
                    VStack{
                        Icons().mapa
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
