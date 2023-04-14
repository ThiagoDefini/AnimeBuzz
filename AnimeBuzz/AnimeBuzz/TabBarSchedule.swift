//
//  TabBarSchedule.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct TabBarSchedule: View {
    var body: some View {
        
//        var arrayAttractions: [Attraction] = [attraction1, attraction2, attraction3, attraction4, attraction5, attraction6, attraction7, attraction8, attraction9, attraction10]
//
        
        NavigationStack {
            
            ZStack {
                VStack(spacing: 0){
                    ZStack{
                        Colors().pink
                            .ignoresSafeArea()
                        VStack{
                            Images.Titulos().titulo_cronograma
                                .ignoresSafeArea()
                            Spacer()
                        }
                        VStack{
                            ScrollView{
                                HStack{
                                    StrokeText(text: "cronograma", width: 2, color: .black)
                                        .foregroundColor(.white)
                                        .font(.system(size: 64, weight: .bold))
                                }
                                .padding(.bottom, padding1)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct TabBarSchedule_Previews: PreviewProvider {
    static var previews: some View {
        TabBarSchedule()
    }
}
