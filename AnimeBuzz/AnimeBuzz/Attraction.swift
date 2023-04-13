//
//  classAttraction.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 11/04/23.
//

import Foundation
import SwiftUI

enum attractionType{
    case atividadeLivre
    case presencaEspecial
    case convidadoEspecial
    case concurso
    case bandaJRock
    
    var description: String{
        switch self{
        case .atividadeLivre:
            return "Atividade Livre"
        case .presencaEspecial:
            return "Presenca Especial"
        case .convidadoEspecial:
            return "Convidade Especial"
        case .concurso:
            return "Concurso"
        case .bandaJRock:
            return "Banda JRock"
        }
    }
    
    var color: Color{
        switch self{
        case .atividadeLivre:
            return Colors().magenta
        case .presencaEspecial:
//            return Colors().gold
            return Color.yellow
        case .convidadoEspecial:
            return Colors().lime
        case .concurso:
            return Colors().cian
        case .bandaJRock:
//            return Colors().flamingo
            return Color.pink
        }
    }
    
}

class Attraction:  Hashable{
    static func == (lhs: Attraction, rhs: Attraction) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: String = UUID().uuidString
    private var time: String
    private var attractionType: attractionType
    private var description: String
    private var place: String
    private var favorited: Bool
    
    init(time: String, attractionType: attractionType, description: String, place: String, favorited: Bool){
        self.time = time
        self.attractionType = attractionType
        self.description = description
        self.place = place
        self.favorited = favorited
    }
    
    func getTime() -> String{
        return time
    }
    
    func setTime(time: String){
        self.time = time
    }
    
    func getAttractionType() -> attractionType{
        return attractionType
    }
    
    func setAttractionType(attractionType: attractionType){
        self.attractionType = attractionType
    }
    
    func getDescription() -> String{
        return description
    }
    
    func setDescription(description: String){
        self.description = description
    }
    
    func getPlace() -> String{
        return place
    }
    
    func setPlace(place: String){
        self.place = place
    }
    
    func getFavorited() -> Bool{
        return favorited
    }
    
    func setFavorited(favorited: Bool){
        self.favorited = favorited
    }
    
    func toggleFavorited(){
        favorited.toggle()
    }
    
}

var testeAtracoes: Attraction = Attraction(time: "16h", attractionType: .atividadeLivre, description: "teste", place: "mapa", favorited: false)
