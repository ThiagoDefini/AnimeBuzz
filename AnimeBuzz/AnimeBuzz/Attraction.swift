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
    case encerramento
    
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
        case .encerramento:
            return "Encerramento"
        }
    }
    
    var color: Color{
        switch self {
        case .atividadeLivre:
            return Colors().magenta
        case .presencaEspecial:
            return Colors().gold
        case .convidadoEspecial:
            return Colors().lime
        case .concurso:
            return Colors().cian
        case .bandaJRock:
            return Colors().flamingo
        case .encerramento:
            return Colors().magenta
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
//    private var time: String
    private var date: String
    private var name: String
    private var timeBegin: String
    private var timeEnding: String
    private var attractionType: attractionType
    private var description: String
    private var place: String
    @State private var favorited: Bool
    private var mapName: Image
    private var number: String

    
    init(date: String, name: String, timeBegin: String, timeEnding: String, attractionType: attractionType, description: String, place: String, favorited: Bool, mapName: Image, number: String){
        self.date = date
        self.name = name
        self.timeBegin = timeBegin
        self.timeEnding = timeEnding
        self.attractionType = attractionType
        self.description = description
        self.place = place
        self.favorited = favorited
        self.mapName = mapName
        self.number = number
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
    
    func getMapName() -> Image{
        return mapName
    }
    
    func setMapName(mapName: Image){
        self.mapName = mapName
    }
    
    func getNumber() -> String{
        return number
    }
    
    func setMapName(number: String){
        self.number = number
    }
}

var listOfAttraction1 = [attraction1, attraction2, attraction3, attraction4, attraction5, attraction6, attraction7, attraction8, attraction9, attraction10, attraction11, attraction12, attraction13]


// DATA 15/04
var testeAtracoes: Attraction = Attraction(date: "15/04", name: "Animeke", timeBegin: "16h", timeEnding: "17h", attractionType: .atividadeLivre, description: "teste", place: "mapa", favorited: false, mapName: Images().mapa, number: "17")

var attraction1: Attraction = Attraction (date: "15/04", name: "Animekê Livre e Quizz", timeBegin: "11:00", timeEnding: "12:00", attractionType: .atividadeLivre, description: "Gosta de cantar? Quer soltar a voz sem compromisso? O Animekê Livre é para você subir no palco e mostrar seu talento, não importa se é profissional ou não! Traz a tua música favorita e vem se divertir.", place: "Palco MPEG", favorited: true, mapName: Image("Local Mapa 1"), number: "1")

var attraction2: Attraction = Attraction(date: "15/04", name: "Cosplay Cospobre e Brincadeiras", timeBegin: "14:00", timeEnding: "15:00", attractionType: .concurso, description: "Cospobre também é vida, sabemos disso e aqui você tem seu espaço!Mostre o que você sabe fazer com poucos recursos, aqui a criativdade é tudo! O Concurso será realizado no SÁBADO!", place: "Palco MPEG", favorited: false, mapName: Image("Local Mapa 1"), number: "1")

var attraction3: Attraction = Attraction(date: "15/04", name: "Mariana Torres + Maria Luiza (Moo)", timeBegin: "15:00", timeEnding: "16:00", attractionType: .convidadoEspecial, description: "-", place: "Palco MPEG", favorited: false, mapName: Image("Local Mapa 1"), number: "1")

var attraction4: Attraction = Attraction(date: "15/04", name: "Cosplay Legends - Apresentações Cosplay", timeBegin: "16:00", timeEnding: "17:00", attractionType: .concurso, description: "As APRESENTAÇÕES COSPLAY voltaram com tudo pro Anime Buzz!! Agora no estilo de apresentações individuais, você poderá representar em formato teatral o seu personagem preferido. Leia as regras e saiba mais! O Concurso será realizado no SÁBADO!", place: " Palco MPEG", favorited: false, mapName: Image("Local Mapa 1"), number: "1")

var attraction5: Attraction = Attraction(date: "15/04", name: "Cantor: Ricardo Cruz", timeBegin: "17:30", timeEnding: "18:30", attractionType: .convidadoEspecial, description: "-", place: "Palco MPEG", favorited: false, mapName: Image("Local Mapa 1"), number: "1")

var attraction6: Attraction = Attraction(date: "15/04", name: "Show Banda - The Kira Justice", timeBegin: "14:00", timeEnding: "15:00", attractionType: .bandaJRock, description: "-", place: "Palco Musical", favorited: false, mapName: Image("Local Mapa 3"), number: "2")

var attraction7: Attraction = Attraction(date: "15/04", name: "Apresentações KPOP - Grupos Sábado", timeBegin: "15:00", timeEnding: "18:00", attractionType: .atividadeLivre, description: "-", place: "Palco Musical", favorited: false, mapName: Image("Local Mapa 3"), number: "2")

var attraction8: Attraction = Attraction(date: "15/04", name: "Sessão de fotos - Mariana Torres + Maria Luiza (Moo)", timeBegin: "14:00", timeEnding: "15:00", attractionType: .convidadoEspecial, description: "-", place: "Área VIP", favorited: true, mapName: Image("Local Mapa 3"), number: "3")

var attraction9: Attraction = Attraction(date: "15/04", name: "Sessão de fotos - Cantor: Ricardo Cruz", timeBegin: "16:00", timeEnding: "17:00", attractionType: .convidadoEspecial, description: "-", place: "Área VIP", favorited: false, mapName: Image("Local Mapa 6"), number: "3")

var attraction10: Attraction = Attraction(date: "15/04", name: "Encerramento", timeBegin: "18:30", timeEnding: "19:00", attractionType: .encerramento , description: "-", place: "Centro", favorited: false, mapName: Image("Local Mapa 6"), number: "0")


// DATA 16/04

var attraction11: Attraction = Attraction(date: "16/04", name: "Dublador: Charles Emmanuel + Luísa Horta", timeBegin: "15:00", timeEnding: "16:00", attractionType: .convidadoEspecial, description: "-", place: "Placo MPEG", favorited: true, mapName: Image("Local Mapa 1"), number: "1")

var attraction12: Attraction = Attraction(date: "16/04", name: "Desfile Cosplay", timeBegin: "16:00", timeEnding: "17:00", attractionType: .concurso, description: "Aaaah o Concurso Cosplay do Buzz! É o tradicional desfile com 50 participantes vestindo incríveis cosplays disputando as 6 primeiras colocações no palco principal em frente a milhares de espectadores. Leia as regras, faça sua inscrição e prepare seu cosplay! O Concurso será realizado no DOMINGO!", place: "Palco MPEG", favorited: false, mapName: Image("Local Mapa 1"), number: "1")

var attraction13: Attraction = Attraction(date: "16/04", name: " Cantor: Detonator", timeBegin: "17:30", timeEnding: "18:30", attractionType: .convidadoEspecial, description: "-", place: "Palco MPEG", favorited: false, mapName: Image("Local Mapa 1"), number: "1")
