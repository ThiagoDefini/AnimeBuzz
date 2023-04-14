//
//  MapView.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct MapListItemView: View {
    
    var number: String
    var place: String
    
    var body: some View {
        
        HStack{
            ZStack{
                Circle()
                    .fill(Colors().circleBlue)
                    .frame(width: 35, height: 35)
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: borderWidth))
                Text(number)
                    .font(.custom(Fonts.Lato().bold, size: 22))
                    .padding(.bottom, 3)
                    .foregroundColor(.black)
                    .padding(.trailing, 3)
            }
            Text(place)
                .foregroundColor(Colors().black)
                .font(.system(size: 18))
        }
    }
}

struct MapListItemView_Previews: PreviewProvider {
    static var previews: some View {
        MapListItemView(number: "1", place: "- Palco MPEG")
    }
}
