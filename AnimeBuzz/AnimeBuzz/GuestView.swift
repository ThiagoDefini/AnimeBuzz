//
//  GuestView.swift
//  AnimeBuzz
//
//  Created by Thiago Defini on 12/04/23.
//

import SwiftUI

struct GuestView: View {
    var guest: Guest
    
    var body: some View {
        ScrollView{
            ZStack{
                Colors().pink
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        Images().banner
                            .padding()
                        
                        Text(guest.getName())
                        
                    }
                    
                    Image(guest.getBigImage())
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Text(guest.getCategory())
                        .padding()
                    
                    Text(guest.getDescription())
                        .padding(.horizontal)
                    
                    HStack{
                        //Social Medias
                        Text("Social Medias")
                            .padding()
                    }
                    
                    HStack{
                        Text("Aparições:")
                            .padding()
                        Spacer()
                    }
                    
//                    List(guest.getListOfattraction()){attraction in
//                        Text(attraction.getDescription())
//                        
//                    }
                    .padding(.horizontal)
                    .foregroundColor(Colors().pink)
                    
                }
            }
        }
    }
}

struct GuestView_Previews: PreviewProvider {
    static var previews: some View {
        
        GuestView(guest: guest1)
    }
}
