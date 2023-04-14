//
//  MapView.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 12/04/23.
//

import SwiftUI

struct TapMapView: View {
    
    
    
    @State private var selected = false
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                ZStack{
                    Colors().pink
                        .ignoresSafeArea()
                    VStack{
                        Images.Titulos().titulo_mapa
                        Spacer()
                        
                    }
                    ScrollView{
                        StrokeText(text: "mapa", width: 2, color: .black)
                            .foregroundColor(.white)
                            .font(.system(size: 75, weight: .bold))
                            .padding(.vertical)
                        VStack{
                            VStack {
                                
                                Images().mapa
                                    .resizable()
                                    .frame(width: 300, height: 550)
                                    .cornerRadius(20.0)
                                    .overlay{
                                        Icons().expandir
                                            .padding(.bottom, 507)
                                            .padding(.leading, 260)
                                            .foregroundColor(.black)
                                            .frame(width: 300, height: 550)
                                            .onTapGesture {
                                                selected.toggle()
                                            }
                                    }
                            }
                            
                            
                            VStack{
                                HStack {
                                    VStack (alignment: .leading){
                                        MapListItemView(number: "1", place: "- Palco MPEG")
                                        MapListItemView(number: "2", place: "- Musical")
                                        MapListItemView(number: "3", place: "- Vip")
                                        MapListItemView(number: "4", place: "- Área 4")
                                        MapListItemView(number: "5", place: "- Área 5")
                                        MapListItemView(number: "6", place: "- Área 6")
                                    }
                                    VStack(alignment: .leading){
                                        MapListItemView(number: "7", place: "- Área 7")
                                        MapListItemView(number: "8", place: "- Área 8")
                                        MapListItemView(number: "9", place: "- Área 9")
                                        MapListItemView(number: "10", place: "- Área 10")
                                        MapListItemView(number: "11", place: "- Área 11")
                                        MapListItemView(number: "12", place: "- Área 12")
                                    }
                                }
                            }
                        }
                        .padding()
                        .background(Colors().littleGreen)
                        .cornerRadius(radius)
                    }
                    .padding()
                }
                .scrollIndicators(.hidden)
            }
        }
        .overlay(selected ?
                 ZStack{
            Color.black
                .ignoresSafeArea()
                .opacity(0.5)
                .onTapGesture {
                    selected.toggle()
                }
            Images().mapa .resizable() .frame(width: 360, height: 700) .cornerRadius(20.0)
        }: nil)
    }
}

struct TapMapView_Previews: PreviewProvider {
    static var previews: some View {
        TapMapView()
    }
}
