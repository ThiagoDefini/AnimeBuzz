//
//  SelectEventView.swift
//  AnimeBuzz
//
//  Created by Thiago Defini on 11/04/23.
//

import SwiftUI

struct StrokeText: View{
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

struct SelectEventView: View{
    var events: [Event] = [Event(city: "Porto Alegre", dates: [], guests: [], attractions: [], map: "", imageName: Images().poa), Event(city: "Portão", dates: [], guests: [], attractions: [], map: "", imageName: Images().portao)]
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(spacing: 0){
                    Colors().black.edgesIgnoringSafeArea(.top).frame(maxHeight: 2)
                    ZStack{

                        Colors().pink
                            .edgesIgnoringSafeArea(.bottom)
                        VStack{
                            Images.Titulos().titulo_eventos
                            Spacer()
                            
                        }

                Colors().pink
                    .edgesIgnoringSafeArea(.bottom)
                    VStack{
                        
                        Spacer()
                    
                }

                        ScrollView{
                            ZStack{
                                Images.Titulos().titulo_eventos
                                StrokeText(text: "eventos", width: 2, color: .black)
                                    .foregroundColor(.white)
                                    .font(.system(size: 75, weight: .bold))
                                    .padding(.vertical)
                            }
                            
                            ForEach(events, id: \.self){ event in
                                NavigationLink{
                                    tabViewScreen()
                                }label: {
                                    event.getImageName()
                                }
                            }
                            
                        }
                        .scrollIndicators(.hidden)
                    }
                }
            }
            .navigationBarBackButtonHidden()
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
}

struct SelectEventView_Previews: PreviewProvider {
    static var previews: some View {
        SelectEventView()
    }
}
