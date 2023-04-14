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
        ZStack{
            Colors().pink
                .ignoresSafeArea(.all)
            ScrollView{
                ZStack{
                    
                    VStack{
                        ZStack{
                            Images().banner
                                .padding()
                            
                            Text(guest.getName())
                                .modifier(title3())
                        }
                        
                        Image(guest.getBigImage())
                            .resizable()
                            .frame(width: 300, height: 300)
                        
//                        Text(guest.getCategory())
//                            .padding()
                        
                        Text(guest.getDescription())
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .modifier(AnimeBuzz.body())
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
                        .padding(.horizontal)
                        
                        HStack{
                            StrokeText(text: "Aparições:", width: 2, color: .black)
                                .foregroundColor(.white)
                                .modifier(title2())
                                .padding(.vertical)
                                .padding(.leading)
                            Spacer()
                        }
                        .padding(.vertical)
                        
                        ForEach(guest.getListOfattraction(), id: \.self){ attraction in
                            GuestAttractionRow(attraction: attraction)
                        }
                        
                        
                        .padding(.horizontal)
                        .foregroundColor(Colors().pink)
                        
                    }
                }
                //            .ignoresSafeArea()
            }
        }
    }
}

struct GuestView_Previews: PreviewProvider {
    static var previews: some View {
        
        GuestView(guest: guest1)
    }
}
