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
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                VStack(spacing: 0){
                    Colors().black.edgesIgnoringSafeArea(.top).frame(maxHeight: 2)
                    ZStack{
                        Colors().pink
                            .edgesIgnoringSafeArea(.bottom)
                        VStack{
                            Images().titulo_noticias_poa
                            Spacer()
                            
                        }
                        
                        VStack{
                            ScrollView{
                                
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
                                
                                
            
                            }
                        }
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(Colors().black, for: .navigationBar)
            .toolbar(.visible, for: .navigationBar)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Images().logo
                        .resizable()
                        .padding(.top, 40.0)
                        .frame(width: 100.0, height: 100.0)
                    
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing){
                    Button(action:{}, label:{
                        Label("Send", systemImage: "info.circle")
                            .padding(.top, 100)
                    })
                    Button(action:{}, label:{
                        Label("Send", systemImage: "at")
                            .padding(.top, 100)
                    })
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
