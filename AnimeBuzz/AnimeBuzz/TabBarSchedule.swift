//
//  TabBarSchedule.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct TabBarSchedule: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                VStack(spacing: 0){
                    Colors().black.edgesIgnoringSafeArea(.top).frame(maxHeight: 2)
                    ZStack{
                        Colors().pink
                            .edgesIgnoringSafeArea(.bottom)
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
