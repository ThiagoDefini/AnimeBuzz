//
//  AttractionRow.swift
//  AnimeBuzz
//
//  Created by Thiago Defini on 13/04/23.
//

import SwiftUI

struct AttractionRow: View {
    var attraction: Attraction
    
    var body: some View {
        ZStack{
            attraction.getAttractionType().color
            VStack{
                HStack{
                    Text(attraction.getAttractionType().description)
                        .padding(10)
                    Spacer()
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
        }
        .cornerRadius(20)
        .frame(width: 350 ,height: 50)
        .overlay(
            RoundedRectangle(cornerRadius: radius)
                .stroke(Color.black, lineWidth: borderWidth))
        
        
    }
}

struct AttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        AttractionRow(attraction: testeAtracoes)
    }
}
