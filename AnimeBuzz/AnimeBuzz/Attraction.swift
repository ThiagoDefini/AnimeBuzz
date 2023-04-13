//
//  classAttraction.swift
//  AnimeBuzz
//
//  Created by Felipe Araujo on 11/04/23.
//

import Foundation

enum attractionType {
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

class Attraction{
    private var date: String
    private var name: String
    private var timeBegin: String
    private var timeEnding: String
    private var attractionType: attractionType
    private var description: String
    private var place: String
    private var favorited: Bool
    private var mapName: String
    
    init(date: String, name: String, timeBegin: String, timeEnding: String, attractionType: attractionType, description: String, place: String, favorited: Bool, mapName: String){
        self.date = date
        self.name = name
        self.timeBegin = timeBegin
        self.timeEnding = timeEnding
        self.attractionType = attractionType
        self.description = description
        self.place = place
        self.favorited = favorited
        self.mapName = mapName
        //self.mapImage = mapImage
    }
    
    func getDate() -> String{
        return date
    }
    
    func setDate(date: String){
        self.date = date
    }
    
    func getName() -> String{
        return name
    }
    
    func setName(name: String){
        self.name = name
    }
    
    func getTimeBegin() -> String{
        return timeBegin
    }
    
    func setTimeBegin(time: String){
        self.timeBegin = time
    }
    
    func getTimeEnding() -> String{
        return timeEnding
    }
    
    func setTimeEnding(time: String){
        self.timeEnding = time
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
    
    func getMapName() -> String{
        return mapName
    }
    
    func setMapName(mapName: String){
        self.mapName = mapName
    }
    
}

var testeAtracoes: Attraction = Attraction(date: "15/04", name: "Animeke", timeBegin: "16h", timeEnding: "17h", attractionType: .atividadeLivre, description: "teste", place: "mapa", favorited: false, mapName: "Local Mapa 1")
