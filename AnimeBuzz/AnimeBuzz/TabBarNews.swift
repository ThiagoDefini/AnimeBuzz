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
        HStack{
            Spacer()
            
            VStack{
                Text("🎟️")
                    .font(.system(size: 60))
                    .rotationEffect(.degrees(-30))
            }
            Spacer()
            VStack{
                Text("GARANTA")
                Text("SEU INGRESSO")
            }
            .bold()
            .italic()
            .foregroundColor(.black)
            .modifier(title3())
            Spacer()

        }
        .frame(width: 350, height: 80, alignment: .center)
        .background(Colors().yellow)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

struct TabBarNews: View {
    var event: Event
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                ZStack{
                    Colors().pink
                        .ignoresSafeArea()
                    
                    VStack{
                        ScrollView{
                            VStack{
                                ZStack(alignment: .top){
                                    Images.Titulos().titulo_noticias_poa
                                    
                                    VStack{
                                        StrokeText(text: event.getCity(), width: 2, color: .black)
                                            .foregroundColor(.white)
                                            .font(.system(size: 64, weight: .bold))
                                            .padding(.bottom, padding1)
                                        
                                        NavigationLink("") {
                                            ExternalWebsite()
                                        }
                                        .buttonStyle(TicketButton())
                                        .padding(.bottom, padding2)
                                        
                                        VStack{
                                            VStack{
                                                HStack{
                                                    Text ("Convidados")
                                                        .foregroundColor(.white)
                                                    
                                                    Text ("mais")
                                                        .foregroundColor(Colors().yellow)
                                                    
                                                }
                                                .modifier(title2())
                                                
                                                Text ("do que especiais")
                                                    .foregroundColor(Colors().yellow)
                                                    .modifier(title2())
                                            }
                                            .bold()
                                            .font(.system(size: 36))
                                            .italic()
                                            .padding(.top, 20)
                                            
                                            VStack{
                                                ForEach(event.getGuests(), id: \.self) {guest in
                                                    GuestInfos(guest: guest)
                                                }
                                            }
                                            Spacer()
                                        }
                                        .frame(width: 350, alignment: .center)
                                        .background(Colors().purple)
                                        .cornerRadius(20)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 2)
                                        )
                                    }
                                }
                            }
                        }
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
            TabBarNews(event: event1)
        }
    }
}
