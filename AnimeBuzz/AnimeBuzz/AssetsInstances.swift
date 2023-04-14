//
//  AssetsInstances.swift
//  AnimeBuzz
//
//  Created by Mateus Moura Godinho on 11/04/23.
//

import Foundation
import SwiftUI

class Colors{
    var black = Color("Grafite")
    var yellow = Color("Gold")
    var pink = Color("Bubblegum Pink")
    var cian = Color("Diamond")
    var green = Color("Grass Green")
    var red = Color("Hard Red")
    var purple = Color("Light Purple")
    var lime = Color("Lime")
    var magenta = Color("Magenta")
    var blue = Color("Ocean Blue")
    var principal = Color("AccentColor")
    var gold = Color("Goldish")
    var flamingo = Color("Flamingo")
    var diamond = Color("Diamond")
    var littleGreen = Color(red: 0.702, green: 0.843, blue: 0.545)
    var circleBlue = Color(red: 0.097, green: 0.645, blue: 0.859)

}

class Images{
    var buzz = Image("Buzz")
    var logo = Image("Logo")
    var white_bg = Image("WhiteBackground")
    var banner = Image("Banner")
    var poa = Image("Poa")
    var portao = Image("Portao")
    var mapa = Image("Mapa")
    var logoTabView = Image("LogoTabView")
    
    class Atividades{
        var animeke = Image("Animeke")
        var apresentacao_kpop = Image("Animeke")
        var apresentacao_cosplay = Image("Animeke")
        var cospobre = Image("Cospobres")
        var kirajustice = Image("KiraJustice")
        var desfile = Image("Desfile")
        var setfly = Image("Setfly")
        var random_dance = Image("Random Dance")
    }
    
    class Titulos{
        var titulo_eventos = Image("Titulo Eventos")
        var titulo_noticias_poa = Image("Titulo Noticias Poa")
        var titulo_noticias_portao = Image("Titulo Noticias Portao")
        var titulo_cronograma = Image("Titulo Cronograma")
        var titulo_mapa = Image("Titulo Mapa")
        var titulo_favoritos = Image("Titulo Favoritos")
    }
    
    class Convidados{
        class Pequeno{
            var charles_emmanuel = Image("Charles Emmanuel")
            var ricardo_cruz = Image("Ricardo Cruz")
            var detonator = Image("Detonator")
            var luisa_horta = Image("Luisa Horta")
            var mariana_torres = Image("Mariana Torres")
            var moo_chan = Image("Moo-chan")
        }
        
        class Grande{
            var charles_emmanuel = Image("Charles Emmanuel Maior")
            var ricardo_cruz = Image("Ricardo Cruz Maior")
            var detonator = Image("Detonator Maior")
            var luisa_horta = Image("Luisa Horta Maior")
            var mariana_torres = Image("Mariana Torres Maior")
            var moo_chan = Image("Moo-chan Maiors")
        }
    }
}

class Icons{
    var noticias = Image(systemName: "newspaper.fill")
    var estrela = Image(systemName: "star.fill")
    var calendario = Image(systemName: "calendar.badge.clock")
    var mapa = Image(systemName: "map.fill")
    var estrela_riscada = Image(systemName: "star.slash.fill")
    var info = Image(systemName: "info.circle")
    var contato = Image(systemName: "at")
    var expandir = Image(systemName: "arrow.up.left.and.arrow.down.right")
    var relogio = Image(systemName: "clock")
    var atividade = Image(systemName: "person.fill")
    var local = Image(systemName: "pin.fill")
    var ticket = "🎟️"
    var instagram = Image("instagram")
    var facebook = Image("facebook")
    var youtube = Image("youtube")
}

class Fonts{
    class Lato{
        var regular = "Lato-Regular"
        var black = "Lato-Black"
        var black_italic = "Lato-BlackItalic"
        var bold = "Lato-Bold"
        var bold_italic = "Lato-BoldItalic"
        var thin = "Lato-Thin"
        var thin_italic = "Lato-ThinItalic"
        var light = "Lato-Light"
        var light_italic = "Lato-LightItalic"
        var italic = "Lato-Italic"
    }
    
    class Helvetica{
        var regular = "Helvetica"
        var light = "Helvetica-Light"
        var bold = "Helvetica-Bold"
    }
}

//FONT SIZES
struct title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.Helvetica().bold, size: 60))
    }
}
struct title2: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.Lato().black_italic, size: 36))
    }
}
struct title3: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.Lato().black_italic, size: 26))
    }
}
struct label: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.Helvetica().light, size: 16))
    }
}
struct body: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.Helvetica().regular, size: 18))
    }
}

//GENERAL SIZES
struct iconSize: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 40, height: 40)
    }
}

var smallRadius: CGFloat = 5.0
var radius: CGFloat = 15
var borderWidth: CGFloat = 2.0
var padding1: CGFloat = 40.0
var padding2: CGFloat = 22.0
var largePadding: CGFloat = 60.0
