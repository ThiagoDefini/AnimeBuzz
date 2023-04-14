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
            NavigationBar(space: 0.0)
            VStack{
                ZStack{
                    Colors().pink
                        .ignoresSafeArea()
                    ScrollView{
                        ZStack (alignment: .top){
                            Images.Titulos().titulo_eventos
                            StrokeText(text: "eventos", width: 2, color: .black)
                                .foregroundColor(.white)
                                .font(.system(size: 75, weight: .bold))
                                .padding(.bottom, padding1)
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

struct SelectEventView_Previews: PreviewProvider {
    static var previews: some View {
        SelectEventView(events: [event1, event2])
    }
}
