//
//  AttractionRow.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct AttractionRow: View {
    
    var attraction: Attraction
    
    var body: some View {
        
        VStack{
            
            //DATA
            HStack{
                Text (attraction.getDate())
                    .modifier(title2())
                    .frame(width: 120, height: 60, alignment: .center)
                    .background(Colors().circleBlue)
                    .cornerRadius(radius)
                    .overlay(
                        RoundedRectangle(cornerRadius: radius)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .foregroundColor(.white)
                Spacer()
            }
            
            
            //INFOS DO EVENTO
            VStack{
                HStack{
                    Text (attraction.getName())
                        .modifier(title2())
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
                
                HStack{
                    Icons().relogio
                        .foregroundColor(Colors().circleBlue)
                    Text(attraction.getTimeBegin() + " - " + attraction.getTimeEnding())
                    Icons().atividade
                        .foregroundColor(Colors().circleBlue)
                    Text(attraction.getAttractionType().description)
                    Icons().local
                        .foregroundColor(Colors().circleBlue)
                    
                    Text(attraction.getPlace())
                    Spacer()

                }
                HStack{
                    Icons().estrela_riscada
                        .foregroundColor(.white)
                    Spacer()
                        .padding()

                }
            }
            .padding()

            .foregroundColor(.white)
            .frame(width: 360, height: 120, alignment: .center)
            .background(attraction.getAttractionType().color)
            .cornerRadius(radius)
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(Color.black, lineWidth: 2))
        }
        .background(.green)
        .padding()
    }
}

struct AttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        AttractionRow(attraction: attraction1)
    }
}
