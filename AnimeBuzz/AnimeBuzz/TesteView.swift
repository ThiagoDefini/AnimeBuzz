//
//  TesteView.swift
//  AnimeBuzz
//
//  Created by Mateus Moura Godinho on 11/04/23.
//

import SwiftUI

struct TesteView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(spacing: 0){
                    Colors().black.edgesIgnoringSafeArea(.top).frame(maxHeight: 2)
                    
                    ZStack{
                        Colors().pink.edgesIgnoringSafeArea(.bottom)
                        //COMEÇO DO CORPO DA VIEW--
                        ScrollView(.vertical){
                            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(.white).font(.custom(Fonts.Lato().regular, size: 30))
                        }.scrollIndicators(.hidden)
                    }
                }
            }
        }
        .frame(minHeight: 200)
//        .navigationBarBackButtonHidden()
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarBackground(Colors().black, for: .navigationBar)
        .navigationBarTitleDisplayMode(.large)
        .toolbar{
            ToolbarItem(placement: .principal){
                Images().logo
                    .resizable()
                    .padding(.top, 40.0)
                    .frame(width: 100.0, height: 100.0)
            }
            
            ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing){
                Button(action:{}, label:{
                    Label("Send", systemImage: "info.circle").foregroundColor(Color.white)
                })
                Button(action:{}, label:{
                    Label("Send", systemImage: "at").foregroundColor(Color.white)
                })
            }
        }
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
