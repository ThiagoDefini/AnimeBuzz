//
//  ContentView.swift
//  AnimeBuzz
//
//  Created by Thiago Defini on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAnimating: Bool = false
    @State private var iconSize: Double = 90.0
    @State private var currentTab: Int = 0
    
    init(iconSize: Double = 90.0, currentTab: Int = 0) {
        self.iconSize = iconSize
        self.currentTab = currentTab
    }
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Images().white_bg
                    .resizable(resizingMode: .stretch)
                
                VStack(spacing: padding1){
                    Spacer()
                    Images().logo
                        .resizable()
                        .frame(width:150, height:100)
                        .padding(.top, padding2)
                        .scaleEffect(isAnimating ? 1 : 0.9)
                    
                    TabView(selection: $currentTab,
                            content:  {
                        ForEach(OnboardingData.list) { viewData in
                            OnboardingView(data: viewData, iconSize: $iconSize, currentTab: $currentTab)
                                .tag(viewData.id)
                        }
                    })
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//                    .padding(.bottom, 40)
                    
                    if(currentTab != 0){ // BOTÃO DE VOLTAR
                        Button(action: {
                            if currentTab > 0 {
                                currentTab-=1
                            }
                        }){
                        label: do {
                            Text("Voltar").underline().foregroundColor(Color.gray)
                        }
                        }.padding(.bottom, largePadding)
                    } // BOTÃO DE VOLTAR
                    else{
                        Button(action: {
                            if currentTab > 0 {
                                currentTab-=1
                            }
                        }){
                        label: do {
                            Text("Voltar").underline().foregroundColor(Color.gray)
                        }
                        }.padding(.bottom, largePadding).hidden()
                    }
                }
            }.ignoresSafeArea()
                .onAppear(perform: {
                    isAnimating = false
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isAnimating = true
                    }
                })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
