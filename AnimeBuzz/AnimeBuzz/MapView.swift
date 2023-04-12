//
//  MapView.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 12/04/23.
//

import SwiftUI

struct MapView: View {
    @State private var selected = false
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                Colors().black.edgesIgnoringSafeArea(.top).frame(maxHeight: 2)
                ZStack{
            Colors().pink
                .edgesIgnoringSafeArea(.bottom)
                VStack{
                    Titulos().titulo_mapa
                    Spacer()
                
            }
                    ScrollView{
                        StrokeText(text: "mapa", width: 2, color: .black)
                            .foregroundColor(.white)
                            .font(.system(size: 75, weight: .bold))
                            .padding(.vertical)
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
                    .scrollIndicators(.hidden)
                }
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

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
