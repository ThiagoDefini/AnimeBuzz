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
    var events: [Event]
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
                                    TabViewScreen(event: event)
                                }label: {
                                    event.getImageName()
                                }
                            }
                            
                        }
                        .scrollIndicators(.hidden)
                    }
                }
            }
            
            
        }
        
    }
}

struct SelectEventView_Previews: PreviewProvider {
    static var previews: some View {
        SelectEventView(events: [event1, event2])
    }
}
