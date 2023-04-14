//
//  SiteEvento.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 11/04/23.
//

import SwiftUI

struct ExternalWebsite: View {
    var body: some View {
        
        ZStack {
            
            ZStack{
                
                Colors().pink
                    .ignoresSafeArea()
                
                VStack{
                    ZStack{
                        NavigationBar()
                    }
                    Images.Titulos().titulo_noticias_poa
                        .ignoresSafeArea()
                    Spacer()
                }
                
                VStack{
                    
                    Text("Exemplo um site fora do sistema")
                        .padding(.bottom, 100)
                }
                .foregroundColor(.white)
                .font(.title2)
            }
        }
    }
}

struct ExternalWebsite_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebsite()
    }
}
