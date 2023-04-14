//
//  tabViewScreen.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 11/04/23.
//

import SwiftUI

struct TabViewScreen: View {
    
    var event: Event
    
    var body: some View {
        
        VStack{
            
            NavigationBar()
            
            TabView{
                
                TabBarNews(event: event)
                    .tabItem(){
                        VStack{
                            Icons().noticias
                            Text("Noticias")
                        }
                    }
                TabBarFavorites()
                    .tabItem(){
                        VStack{
                            Icons().estrela
                            Text("Favoritos")
                        }
                    }
                TabBarSchedule()
                    .tabItem(){
                        VStack{
                            Icons().calendario
                            Text("Cronograma")
                        }
                        .background(.pink)
                    }
                TapMapView()
                    .tabItem(){
                        VStack{
                            Icons().mapa
                            Text("Mapa")
                        }
                    }
            }
            .accentColor(.white)
            .onAppear(){
                UITabBar.appearance().backgroundColor = UIColor(Colors().black)
                UITabBar.appearance().unselectedItemTintColor = UIColor.white
                
            }
        }
        
    }
}

struct TabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabViewScreen(event: event1)
    }
}
