//
//  AttractionView.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 13/04/23.
//

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
                            .modifier(title2())
                    }
                    .padding(.bottom, padding2)
                    Text(attraction.getDescription())
                        .foregroundColor(Colors().principal)
                        .padding(.bottom, padding2)
                        .modifier(title3())
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
                            .fill(Colors().circleBlue)
                            .frame(width: 350, height: 70)
                            .overlay(
                                RoundedRectangle(cornerRadius: radius)
                                    .stroke(Color.black, lineWidth: borderWidth))
                        Text("\(attraction.getDate()) - \(attraction.getTimeBegin()) até \(attraction.getTimeEnding())")
                            .foregroundColor(Colors().principal)
                            .modifier(title2())
                    }
                    .padding(.bottom, padding2)
                    Text("Local:")
                        .modifier(title3())
                        .foregroundColor(Colors().principal)
                        .padding(.trailing, 290)
                    Image(attraction.getMapName())
                        .resizable()
                        .frame(width: 350, height: 600)
                        .cornerRadius(radius)
                }
            }
            .scrollIndicators(.hidden)
            
        }
    }
}

struct AttractionView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionView(attraction: testeAtracoes)
    }
}
