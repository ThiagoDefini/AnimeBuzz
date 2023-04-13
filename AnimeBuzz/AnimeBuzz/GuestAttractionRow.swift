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
                    Spacer()
                    Icons().estrela_riscada
                        .padding(10)
                        .foregroundColor(.white)
                }
                Spacer()
                HStack{
                    Image(systemName: "timer")
                    Text(attraction.getTime())
                    Image(systemName: "person.fill")
                    Text(attraction.getAttractionType().description)
                    Image(systemName: "mappin")
                    Text(attraction.getPlace())
                }
                .padding(5)
                
            }
            .foregroundColor(.black)
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
