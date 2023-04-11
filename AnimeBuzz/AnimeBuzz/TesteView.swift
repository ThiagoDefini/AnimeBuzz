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
                Colors().black.edgesIgnoringSafeArea(.top)// BARRA TOPO
                Colors().pink.edgesIgnoringSafeArea(.bottom).padding(.top, 40)                
                
                //COMEÇO DO CORPO DA VIEW--
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(.white)
            }
        }
//        .navigationBarBackButtonHidden()
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
