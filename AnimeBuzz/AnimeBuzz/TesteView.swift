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
                
                VStack{
                    Images().logo.resizable().frame(width:80, height:60).padding(.bottom, 10)
                    Colors().pink.edgesIgnoringSafeArea(.bottom)
                } // CORPO DO APP
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                
            }
        }.navigationBarBackButtonHidden()
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
