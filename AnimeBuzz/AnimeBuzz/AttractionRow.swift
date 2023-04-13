//
//  AttractionRow.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct AttractionRow: View {
    var body: some View {
        
        VStack{
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
            HStack{
                VStack{
                    Text ("Nome do evento")
                        .modifier(title2())
                        .frame(width: 340, height: 60, alignment: .center)
                        .background(Colors().purple)
                        .cornerRadius(radius)
                        .overlay(
                            RoundedRectangle(cornerRadius: radius)
                                .stroke(Color.black, lineWidth: 2)
                        )
                        .foregroundColor(.white)
                    Spacer()
                }
            }
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
