//
//  Guest.swift
//  AnimeBuzz
//
//  Created by Maria Luísa Lamb Souto on 11/04/23.
//

import Foundation


class Guest {
    
    private var name: String
    private var category: String
    private var description: String
    private var socialMedia: [String]
    private var smallImage: String
    private var bigImage: String
    private var listOfattraction: [Attraction]
    
    
    init(name: String, category: String, description: String, socialMedia: String, smallImage: String, bigImage: String, listOfAttraction: [Attraction]) {
        self.name = name
        self.category = category
        self.description = description
        self.socialMedia = [socialMedia]
        self.smallImage = smallImage
        self.bigImage = bigImage
        self.listOfattraction = listOfAttraction
    }
    
    func getName() -> String{
        return self.name
    }
    
    func setName(name: String){
        self.name = name
    }
    
    func getCategory() -> String{
        return self.category
    }
    
    func setCartegory(category: String){
        self.category = category
    }
    
    func getDescription() -> String{
        return self.description
    }
    
    func setDescription(description: String){
        self.description = description
    }
    
    func getSocialMedia() -> [String]{
        return socialMedia
    }

    func addSocialMedia(socialMedia: String){
        self.socialMedia.append(socialMedia)
    }
    
    func removeSocialMedia(pos: Int){
        socialMedia.remove(at: pos)
    }
    
    func getSmallImage() -> String{
        return self.smallImage
    }
    
    func setSmallImage(smallImage: String){
        self.smallImage = smallImage
    }
    
    func getBigImage() -> String{
        return self.bigImage
    }
    
    func setBigImage(bigImage: String){
        self.bigImage = bigImage
    }
    
    func getListOfattraction() -> [Attraction]{
        return listOfattraction
    }

    func addListOfattraction(listOfattraction: Attraction){
        self.listOfattraction.append(listOfattraction)
    }
    
    func removeListOfattractiona(pos: Int){
        listOfattraction.remove(at: pos)
    }
}

var CharlesEmmanuel: Guest = Guest(name: "Charles Emmanuel", category: "DUBLADOR", description: "Ator, dublador, youtuber e streamer o Charles Emmanuel é uma das vozes mais conhecidas da dublagem brasileira!É ele quem da vida a voz de Ron Weasley de Harry Potter, faz diversos desenhos do Cartoon Network desde o Mutano dos Jovens Titãs, o próprio Ben 10, o maluquinho Rigby de Apenas um Show, a voz do famoso BMO de Hora de Aventura. É a voz do Mclovin, do Jofrey de GOT e inclusive já fez alguns animes como Cavaleiros do Zodíaco e Demon Slayer.O Charles vai estar no dia 16/04, no domingo, no Palco Principal do Anime Buzz para um bate-papo inesquecível com todos, além de fazer parte da nossa Sala VIP, onde aqueles que adquirirem essa modalidade de ingresso vão realizar o sonho de conhecê-lo e poder tirar fotos!", socialMedia: "", smallImage: "Charles Emmanuel", bigImage: "Charles Emmanuel Maior", listOfAttraction: [testeAtracoes])

var Detonador: Guest = Guest(name: "Detonador", category: "CANTOR", description: "🤘O Filhinho do Deus do Metal é atração mais do que confirmada no primeiro Buzz do ano!🤘 Detonator, pros mais próximos Bruno Sutter, é um ator, músico e humorista que caiu na graça do povo com o famoso programa da MTV Hermes e Renato e mais tarde com o grupo de heavy metal cômico, o Massacration.O Detonator vai estar no dia 16/04, no domingo, no Palco Principal do Anime Buzz para um show inesquecível! Além de fazer parte da nossa Sala VIP onde aqueles que adquirirem essa modalidade de ingresso vão realizar o sonho de conhecê-lo e poder tirar fotos!", socialMedia: "", smallImage: "Detonator", bigImage: "Detonador Maior", listOfAttraction: [testeAtracoes])

var MarianaTorres: Guest = Guest(name: "Mariana Torres", category: "DUBLADORA", description: "É a nossa Wanda, nossa Ravena dos Jovens Titãs, nossa nostálgica Raven Baxter das Visões da Raven, nossa Korra de Avatar, a Supergirl, a voz da Jennifer Lawrence a nossa Miyo Ibami em Kakegurui e taaaaantas outras vozes memoráveis!🤩 A Mariana vai estar no nosso Palco Principal no dia 15/04 (SÁBADO) pra participar de um super bate-papo, então já prepara a perguntinha que ela vai responder tudinho!! A Mari também vai participar da nossa área VIP, então é a sua chance de conhecê-la e tirar fotos exclusivas com ela!", socialMedia: "", smallImage: "Mariana Torres", bigImage: "Mariana Torres Maior", listOfAttraction: [testeAtracoes])

var RicardoCruz: Guest = Guest(name: "Ricardo Cruz", category: "CANTOR", description: "Falou em Jaspion, Cavaleiros do Zodíaco e Dragon Ball Super de cara já pensamos nele: Ricardo Cruz!!! Ele é, vocalista, produtor musical, tradutor e um dos integrantes do grupo japonês Jam Project e vai fazer um SHOWZAÇO pra gente no dia 15/04 (SÁBADO)! O Ricardo também vai participar da nossa área VIP, então é a sua chance de conhecê-lo e tirar fotos exclusivas com ele!!!💙", socialMedia: "", smallImage: "Ricardo Cruz", bigImage: "Ricardo Cruz Maior", listOfAttraction: [testeAtracoes])

var MooChan: Guest = Guest(name: "Moo-Chan", category: "COSPLAYER/DUBLADORA", description: "😍A otakinha mais fofa da internet vai vir pro Buzz 😍Moo-chan é dubladora, cantora, produtora de conteúdo de anime, mangá e cosplay desde 2013 e também cosplayer há 12 anos. Atualmente produz conteúdo para o canal BENTÔ, do Omelete, dublou personagens como Ayako Yamada em Kageki Shojo!! e Mine Kuramae, em Fruits basket. É conhecida também por ter apresentado o programa Bunka Pop na PlayTV e YouTube do seu inicio, em 2016, até 2020.A Moo vai estar no nosso Palco Principal no dia 15/04 (SÁBADO) pra participar de um super bate-papo, então já prepara as perguntas que ela vai responder tudinho!! Ela também vai participar da nossa área VIP, então é a sua chance de conhecê-la e tirar fotos exclusivas com ela!!!💙", socialMedia: "", smallImage: "Moo-chan", bigImage: "Moo-chan Maior", listOfAttraction: [testeAtracoes])

var LuisaHorta: Guest = Guest(name: "Luísa Horta", category: "DUBLADORA/ATRIZ", description: "A nossa fadinha dos eventos também tá confirmadíssima pro Buzz!!!Luísa Horta é Bacharel em Teatro pela Universidade Federal do Rio Grande do Sul. Faz parte do elenco da série infantil Mundo Curiozoo, da Discovery Kids. Na dublagem, fez personagens como Uraraka Ochako (My Hero Academia), Kohaku (Dr Stone), Skye (jogo Valorant) e Casca (Berserk). É otaku de coração e seguidora dos passos de Mugiwara no Luffy💙 A Luísa vai estar no nosso Palco Principal no dia 16/04 (DOMINGO) pra participar de um super bate-papo, então já prepara as perguntas que ela vai responder tudinho!!Ela também vai participar da nossa área VIP, então é a sua chance de conhecê-la e tirar fotos exclusivas com ela!!!💙", socialMedia: "", smallImage: "Luisa Horta", bigImage: "Luisa Horta Maior", listOfAttraction: [testeAtracoes])
