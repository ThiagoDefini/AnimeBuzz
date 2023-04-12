//
//  OnboardingData.swift
//  AnimeBuzz
//
//  Created by Mateus Moura Godinho on 10/04/23.
//

import Foundation
import SwiftUI

struct OnboardingData: Identifiable {
    let id: Int
    let icon: String
    let bodyText: String
    let buttonText: String
    let type: HorizontalAlignment
    let offset_x: CGFloat
    let offset_y: CGFloat
    
    static let list: [OnboardingData] = [
        OnboardingData(id: 0, icon: "🕹️", bodyText: "UM BAITA EVENTO!#Maior evento de cultura pop#oriental do sul do Brasil.", buttonText: "Continuar", type: .leading, offset_x: -800, offset_y: 0),
        OnboardingData(id: 1, icon: "👘", bodyText: "Fique por dentro de TUDO!#Aproveite o evento ao#máximo.", buttonText: "Continuar", type: .center, offset_x: -800, offset_y: 0),
        OnboardingData(id: 2, icon: "🎤", bodyText: "Comece a usar o app agora#mesmo e se mantenha#informado sempre.", buttonText: "Começar", type: .trailing, offset_x: 800, offset_y: 0)
    ]
}
