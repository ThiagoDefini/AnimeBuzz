//
//  TabBarFavorites.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct TabBarFavorites: View {
    
    var event: Event
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                VStack(spacing: 0){
                    ZStack{
                        Colors().pink
                            .ignoresSafeArea()
                        VStack{
                            Images.Titulos().titulo_favoritos
                                .ignoresSafeArea()
                            Spacer()
                        }
                        VStack{
                            ScrollView{
                                HStack{
                                    StrokeText(text: "favoritos", width: 2, color: .black)
                                        .foregroundColor(.white)
                                        .font(.system(size: 64, weight: .bold))
                                }
                                .padding(.bottom, padding1)
                                
                                ForEach(event.getDates(), id: \.self){date in
                                    HStack{
                                        Text (date)
                                            .modifier(title2())
                                            .frame(width: 120, height: 60, alignment: .center)
                                            .background(Colors().circleBlue)
                                            .cornerRadius(radius)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: radius)
                                                    .stroke(Color.black, lineWidth: 2)
                                            )
                                            .foregroundColor(.white)
                                            .padding(.leading, 65)
                                        Spacer()
                                    }
                                    ForEach(event.getAttractions(), id: \.self){ attraction in
                                        if attraction.getDate() == date && attraction.getFavorited(){
                                            NavigationLink{
                                                AttractionView(attraction: attraction)
                                            }label: {
                                                AttractionRow(attraction: attraction)
                                            }
                                        }
                                    }
                                }
                                
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

struct TabBarFavorites_Previews: PreviewProvider {
    static var previews: some View {
        TabBarFavorites(event: event1)
    }
}
