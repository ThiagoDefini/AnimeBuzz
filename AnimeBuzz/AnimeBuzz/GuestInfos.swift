//
//  GuestInfos.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 12/04/23.
//

import SwiftUI

struct GuestInfos: View {
    
    var guest: Guest
    
    var body: some View {
        
        VStack{
            
            VStack{
                NavigationLink{
                    GuestView(guest: guest)
                }label: {
                    Image(guest.getSmallImage())
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                }
                Text(guest.getName())
                    .padding(.vertical,1)
                    .font(.system(size: 24))
                Text(guest.getCategory())
                    .font(.system(size: 16))
            }
            .padding()
            .bold()
            .font(.system(size: 20))
            .italic()
            .foregroundColor(.white)
            
            HStack {
                
                if guest.getInstagram() != nil {
                    
                    Image("instagram")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                }
                
                if guest.getFacebook() != nil {
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                }
                
                if guest.getYoutube() != nil {
                    Image("youtube")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                }
            }
            .padding()
        }
        .background(Colors().purple)
    }
}

struct GuestInfos_Previews: PreviewProvider {
    static var previews: some View {
        GuestInfos(guest: guest1)
    }
}
