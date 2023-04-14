//
//  OnboardingView.swift
//  AnimeBuzz
//
//  Created by Mateus Moura Godinho on 10/04/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var data: OnboardingData
    
    @State private var isAnimating: Bool = false
    @Binding var iconSize: Double
    @Binding var currentTab: Int
    
    @State private var showLine1 = false
    @State private var showLine2 = false
    @State private var showLine3 = false
    
    var body: some View {
        ZStack{
            VStack(spacing: padding1) {
                
                VStack(spacing: padding2){
                    ZStack(alignment: .bottom){
                        Images().buzz
                        Text(data.icon)
                            .font(.custom("SF", size: CGFloat(iconSize)))
                            .scaleEffect(isAnimating ? 1 : 0.9)
                    } // BUZZ
                    
                    VStack(alignment: data.type){
                        if(showLine1){
                            Text(data.bodyText.components(separatedBy: "#")[0])
                                .modifier(title3())
                                .bold()
                                .transition(.offset(x: data.offset_x, y: data.offset_y))
                                .transition(.opacity)
                        }
                        if(showLine2){
                            Text(data.bodyText.components(separatedBy: "#")[1])
                                .modifier(title3())
                                .bold()
                                .transition(.offset(x: data.offset_x, y: data.offset_y))
                                .transition(.opacity)
                        }
                        if(showLine3){
                            Text(data.bodyText.components(separatedBy: "#")[2])
                                .font(.custom(Fonts.Lato().black_italic, size: 26))
                                .bold()
                                .transition(.offset(x: data.offset_x, y: data.offset_y))
                                .transition(.opacity)
                        }
                    } // TEXTO PRINCIPAL
                } // CONTEUDO PRINCIPAL
                
                if(currentTab < 2){
                    Button(action: {
                        withAnimation(.easeOut(duration: 2.0)) {
                            if currentTab < 2 {
                                currentTab+=1
                            }
                        }
                    }) {
                        label: do {
                            Text(data.buttonText)
                                .frame(maxWidth: .infinity)
                        }
                    } // CONTINUE BUTTON
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: radius))
                    .tint(Colors().yellow)
                    .controlSize(.large)
                    .modifier(title2())
                    .foregroundColor(Color.black)
                    .background(
                        RoundedRectangle(cornerRadius: radius)
                            .fill(Color.white)
                            .modifier(buttonShadow())
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: radius)
                            .stroke(Color.black, lineWidth: borderWidth)
                    )
                } // BOTÃO DE CONTINUAR
                else {
                    NavigationLink(
                        destination: SelectEventView(events: [event1, event2]),
                        label: {
                            Text(data.buttonText)
                                .frame(maxWidth: .infinity)
                        }
                    )
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: radius))
                    .tint(Colors().yellow)
                    .controlSize(.large)
                    .modifier(title2())
                    .foregroundColor(Color.black)
                    .background(
                        RoundedRectangle(cornerRadius: radius)
                            .fill(Color.white)
                            .modifier(buttonShadow())
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: radius)
                            .stroke(Color.black, lineWidth: borderWidth)
                    )
                } // BOTÃO DE AVANÇAR
                
            }.padding()
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.5)) {
                        showLine1 = true
                    }
                    withAnimation(.easeInOut(duration: 1.5).delay(0.5)) {
                        showLine2 = true
                    }
                    withAnimation(.easeInOut(duration: 1.5).delay(1.0)) {
                        showLine3 = true
                    }
                }
        }
        .ignoresSafeArea(.all)
        .onAppear(perform: {
            isAnimating = false
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        })
    }
}
