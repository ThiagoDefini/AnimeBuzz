//
//  ToolBarIcon.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct NavigationBar: View {
    
    var space: CGFloat
    
    var body: some View {
        
        HStack{
            HStack(alignment: .bottom){
                VStack{
                    Text("")
                        .foregroundColor(.pink)
                }
//                .frame(maxWidth: .infinity)
                HStack(alignment: .center){
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    VStack{
                        Images().logo
                            .resizable()
                            .padding(.vertical, 20)
                            .padding(.trailing, 15)
                            .frame(width: 100.0, height: 100.0)
                    }
//                    .frame(maxWidth: .infinity)
                    Spacer()
                    VStack{
                        HStack(spacing: 20){
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Image(systemName: "at")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        .foregroundColor(.white)
                        .padding(.bottom, -30)
                    }
//                    .frame(maxWidth: .infinity)
                    Spacer()
                }.padding(.top, space)
            }
            .background(Colors().black)
            .accentColor(.white)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            NavigationBar(space: 0.0)
            Spacer()
        }
    }
}


//ANTIGO TOOL BAR

//    .navigationBarBackButtonHidden()
//    .toolbarBackground(.visible, for: .navigationBar)
//    .toolbarBackground(Colors().black, for: .navigationBar)
//    .toolbar(.visible, for: .navigationBar)
//    .toolbar{
//        ToolbarItem(placement: .principal){
//            Images().logo
//                .resizable()
//                .padding(.top, 40.0)
//                .frame(width: 100.0, height: 100.0)
//
//        }
//        ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing){
//            Button(action:{}, label:{
//                Label("Send", systemImage: "info.circle")
//                    .padding(.top, 100)
//            })
//            Button(action:{}, label:{
//                Label("Send", systemImage: "at")
//                    .padding(.top, 100)
//            })
//        }
//
//    }
