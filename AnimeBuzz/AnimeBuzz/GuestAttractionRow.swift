//
//  AttractionRow.swift
//  AnimeBuzz
//
//  Created by Thiago Defini on 13/04/23.
//

import SwiftUI

struct GuestAttractionRow: View {
    var attraction: Attraction
    
    var body: some View {
        ZStack{
            attraction.getAttractionType().color
            VStack{
                HStack{
                    Text(attraction.getAttractionType().description)
                        .padding(10)
                        .modifier(title3())
                    Spacer()
                    Icons().estrela_riscada
                        .padding(10)
                        .foregroundColor(.white)
                }
                Spacer()
                HStack{
                    Icons().relogio
                    Text(attraction.getTimeBegin() + " - " + attraction.getTimeEnding())
                    Icons().atividade
                    Text(attraction.getAttractionType().description)
                    Icons().local
                    Text(attraction.getPlace())
                }
                .padding(5)
                
            }
            .foregroundColor(.white)
        }
        .cornerRadius(radius)
        .overlay(
            RoundedRectangle(cornerRadius: radius)
                .stroke(Color.black, lineWidth: borderWidth))
        .frame(width: 350 ,height: 50)
        
        
    }
}

struct GuestAttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        GuestAttractionRow(attraction: testeAtracoes)
    }
}
