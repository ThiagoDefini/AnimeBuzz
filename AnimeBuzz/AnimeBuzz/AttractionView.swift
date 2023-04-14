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
    
    var body: some View {
        ZStack{
            Colors().pink
                .ignoresSafeArea()
            
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
                    
                    ZStack{
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
                        .onTapGesture{
                            attraction.setFavorited(favorited: true)
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
                    
                    HStack{
                        MapListItemView(number: attraction.getNumber(), place: attraction.getPlace())
                    }
//                    .background(.green)
                    .padding(.horizontal)
                    
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


struct AttractionView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionView(attraction: attraction1)
    }
}
