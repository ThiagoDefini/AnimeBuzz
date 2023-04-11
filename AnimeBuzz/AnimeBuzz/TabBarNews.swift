//
//  TabBarNews.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 11/04/23.
//

import SwiftUI

struct TicketButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Helvica", size: 10.0))
        HStack{
            Text("🎟️")
                .font(.title)
            VStack{
                Text("GARANTA")
                Text("SEU INGRESSO")
            }
            .bold()
            .italic()

        }
//        .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding(.horizontal, 100)
        .padding(.vertical, 20)

        .background(Colors().yellow)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 2)
            )
    }
}

struct TabBarNews: View {
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Colors().pink
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        StrokeText(text: "porto alegre", width: 2, color: .black)
                            .foregroundColor(.white)
                            .font(.system(size: 64, weight: .bold))
                    }
                    
                    NavigationLink("") {
                        SiteEvento()
                    }
                    .buttonStyle(TicketButton())
                    
                    Spacer()

                    
                    HStack{
                        Text ("testen")
                    }
                }
            }
        }
    }
    
    struct StrokeText: View {
        let text: String
        let width: CGFloat
        let color: Color
        
        var body: some View {
            ZStack{
                ZStack{
                    Text(text).offset(x:  width, y:  width)
                    Text(text).offset(x: -width, y: -width)
                    Text(text).offset(x: -width, y:  width)
                    Text(text).offset(x:  width, y: -width)
                }
                .foregroundColor(color)
                Text(text)
            }
        }
    }
    
    struct TabBarNews_Previews: PreviewProvider {
        static var previews: some View {
            TabBarNews()
        }
    }
}
