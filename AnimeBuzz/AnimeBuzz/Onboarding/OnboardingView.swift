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
    @Binding var btnCornerRadius: Double
    @Binding var iconSize: Double
    @Binding var currentTab: Int
    
    var body: some View {
        ZStack{
//            Image("WhiteBackground")
//                .resizable(resizingMode: .stretch)
            
            VStack(spacing: 40) {
//                Image("Logo")
//                    .scaleEffect(isAnimating ? 1 : 0.9)
                
                ZStack(alignment: .bottom){ //Buzz
                    Image("Buzz")
                    Text(data.icon)
                        .font(.custom("SF", size: CGFloat(iconSize)))
                        .scaleEffect(isAnimating ? 1 : 0.9)
                }
                
                // TEXTO PRINCIPAL
                if(data.id == 0){
                    Text(data.bodyText).font(.custom("Helvetica", size: 26)).bold().multilineTextAlignment(.leading).scaleEffect(isAnimating ? 1 : 0.5)
                }
                else if(data.id == 1){
                    Text(data.bodyText).font(.title).bold().multilineTextAlignment(.center).lineLimit(4).scaleEffect(isAnimating ? 1 : 0.5)
                }
                else{
                    Text(data.bodyText).font(.title).bold().multilineTextAlignment(.trailing).lineLimit(4).scaleEffect(isAnimating ? 1 : 0.5)
                }
                //
                
                Button(action: {
                    withAnimation(.easeOut(duration: 2.0)) {
                        if currentTab < 2 {
                            currentTab+=1
                        }
                        else{
                            //COMEÇAR APP
                        }
                    }
                }) {
                label: do {
                    Text(data.buttonText)
                        .frame(maxWidth: .infinity)
                        .bold()
                        .font(.title)
                        .italic()
                }
                } // CONTINUE BUTTON
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: CGFloat(btnCornerRadius)))
                .tint(Color("AccentColor"))
                .controlSize(.large)
                .font(.custom("Lato", size: 22))
                .foregroundColor(Color.black)
                .overlay(
                RoundedRectangle(cornerRadius: CGFloat(btnCornerRadius))
                    .stroke(Color.black, lineWidth: 2))
                
                if(data.id != 0){ // BOTÃO DE VOLTAR
                    Button(action: {
                        withAnimation(.easeOut(duration: 2.0)) {
                            if currentTab > 0 {
                                currentTab-=1
                            }
                        }
                    }){
                    label: do {
                        Text("Voltar").underline().foregroundColor(Color.gray)
                    }
                    }
                } // BOTÃO DE VOLTAR
                else{NavigationLink{} label: { Text("Voltar").underline().foregroundColor(Color.gray)}.hidden()}
                
            }.padding()
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
//
//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView(data: OnboardingData.list.first!, btnCornerRadius: .constant(8.0), iconSize: .constant(90.0))
//    }
//}
