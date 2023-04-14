//
//  ToolBarIcon.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 13/04/23.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        
        HStack{
            HStack(alignment: .bottom){
                VStack{
                    Text("")
                        .foregroundColor(.pink)
                }
                .frame(maxWidth: .infinity)
                VStack{
                    Images().logo
                        .resizable()
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .frame(width: 100.0, height: 100.0)
                }
                .frame(maxWidth: .infinity)
                VStack{
                    HStack{
                        Image(systemName: "info.circle")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.trailing, 10)
                        Image(systemName: "at")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                }
                .frame(maxWidth: .infinity)
            }
            .background(Colors().black)
            .accentColor(.white)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            NavigationBar()
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
