//
//  AttractionView.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 13/04/23.
//

// ajutar espaço

import SwiftUI


struct AttractionView: View {
    
    @State var attraction: Attraction
    @State var favTemp: Bool = false
    
    var body: some View {
        ZStack{
            Colors().pink
                .ignoresSafeArea()
            VStack{
                NavigationBar()

                ScrollView{
                    
                    VStack{
                        
                        
                        ZStack{
                            Images().banner
                            Text(attraction.getName())
                                .foregroundColor(Colors().black)
                                .modifier(title3())
                        }
                        .padding(.bottom, padding2)
                        
                        ZStack{
                            Text(attraction.getDescription())
                        }
                        .foregroundColor(Colors().principal)
                        .padding(.bottom, padding2)
                        .multilineTextAlignment(.center)
                        
                        Button{
                            
                            favTemp.toggle()
                            
                        }label: {
                            ZStack{
                                if favTemp{
                                    RoundedRectangle(cornerRadius: radius)
                                        .fill(Colors().red)
                                        .frame(width: 200, height: 50)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: radius)
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    HStack{
                                        Icons().estrela_riscada
                                            .foregroundColor(Colors().principal)
                                        Text("Remover")
                                            .foregroundColor(Colors().principal)
                                            .modifier(title3())
                                    }
                                    
                                } else {
                                    RoundedRectangle(cornerRadius: radius)
                                        .fill(Colors().yellow)
                                        .frame(width: 200, height: 50)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: radius)
                                                .stroke(Color.black, lineWidth: borderWidth))
                                    HStack{
                                        Icons().estrela
                                            .foregroundColor(Colors().principal)
                                        Text("Favoritar")
                                            .foregroundColor(Colors().principal)
                                            .modifier(title3())
                                    }
                                }
                            }
                        }
                        .padding(.bottom, padding2)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: radius)
                                .fill(Colors().blue)
                                .frame(width: 350, height: 70)
                                .overlay(
                                    RoundedRectangle(cornerRadius: radius)
                                        .stroke(Color.black, lineWidth: borderWidth))
                            Text("\(attraction.getDate()) - \(attraction.getTimeBegin()) até \(attraction.getTimeEnding())")
                                .foregroundColor(Colors().principal)
                                .modifier(title3())
                        }
                        .padding(.bottom, padding2)
                        
                        HStack{
                            StrokeText(text: "Local:", width: 2, color: .black)
                                .foregroundColor(.white)
                                .modifier(title2())
                            Spacer()
                        }
                        .padding(.leading)
                        
                        ZStack{
                            attraction.getMapName()
                                .resizable()
                                .frame(width: 350, height: 600)
                                .cornerRadius(radius)
                        }
                    }
                }
                .scrollIndicators(.hidden)
                .padding()
            }
        }
    }
}


struct AttractionView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionView(attraction: attraction1)
    }
}
