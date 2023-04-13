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
                        Images.Titulos().titulo_mapa
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
                        VStack{
                            HStack{
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    Text("1")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- MPEG")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                Spacer()
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    
                                    Text("7")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 7")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                .padding(.trailing, 15)
                        }
                            .padding(.trailing, 10)
                            HStack{
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    Text("2")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Musical")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                Spacer()
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    
                                    Text("8")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 8")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                .padding(.trailing, 15)
                        }
                            .padding(.trailing, 10)
                            HStack{
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    Text("3")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Vip")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                Spacer()
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    
                                    Text("9")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 9")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                .padding(.trailing, 15)
                        }
                            .padding(.trailing, 10)
                            HStack{
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    Text("4")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 4")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                Spacer()
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    
                                    Text("10")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 10")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                
                        }
                            .padding(.trailing, 10)
                            HStack{
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    Text("5")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 5")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                Spacer()
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    
                                    Text("11")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 11")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                        }
                            .padding(.trailing, 10)
                            HStack{
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    Text("6")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 6")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                                Spacer()
                                HStack(spacing: -15){
                                ZStack{
                                    Circle()
                                        .fill(Colors().blue)
                                        .frame(width: 100, height: 50)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    
                                    Text("12")
                                        .modifier(title3())
                                        .padding(.bottom, 3)
                                        .padding(.trailing, 3)
                                }
                                Text("- Area 12")
                                    .modifier(title3())
                                    .foregroundColor(Colors().principal)
                            }
                        }
                            .padding(.trailing, 10)
                        }
                        .padding(.top, padding2)

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
