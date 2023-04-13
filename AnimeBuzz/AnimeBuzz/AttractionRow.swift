//
//  AttractionRow.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct AttractionRow: View {
    var body: some View {
        
        var arrayAttractions: [Attraction] = [attraction1, attraction2, attraction3, attraction4, attraction5, attraction6, attraction7, attraction8, attraction9, attraction10]

        VStack{
            
            //DATA
            HStack{
                Text ("16/04")
                    .modifier(title2())
                    .frame(width: 120, height: 60, alignment: .center)
                    .background(Colors().blue)
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
                    Text ("teste")
                        .modifier(title2())
                        .padding(.leading, 10)
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()

                HStack{
                    
                    Text ("infos do evento")
                        .padding(.leading, 10)
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .frame(width: 360, height: 120, alignment: .center)
            .background(Colors().purple)
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
        AttractionRow()
    }
}
