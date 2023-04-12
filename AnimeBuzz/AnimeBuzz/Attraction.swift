//
//  classAttraction.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 11/04/23.
//

import Foundation

enum attractionType{
    case atividadeLivre
    case presencaEspecial
    case convidadoEspecial
    case concurso
    case mercadoGamer
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
        case .mercadoGamer:
            return "Mercado Gamer"
        case .bandaJRock:
            return "Banda JRock"
        }
    }
}

class Attraction: Identifiable{
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
