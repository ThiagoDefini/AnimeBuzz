//
//  Event.swift
//  AnimeBuzz
//
//  Created by Thiago Defini on 11/04/23.
//

import Foundation
import SwiftUI

class Event: Hashable{
    static func == (lhs: Event, rhs: Event) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    private var id: String = UUID().uuidString
    private var city: String
    private var dates: [String]
    private var guests: [Guest]
    private var attractions: [Attraction]
    private var map: String
    private var imageName: Image
    
    init(city: String, dates: [String], guests: [Guest], attractions: [Attraction], map: String, imageName: Image) {
        self.city = city
        self.dates = dates
        self.guests = guests
        self.attractions = attractions
        self.map = map
        self.imageName = imageName
    }
    
    func getCity() -> String{
        return self.city
    }
    
    func setCity(city: String){
        self.city = city
    }
    
    func getDates() -> [String]{
        return dates
    }
    
    func addDate(date: String){
        dates.append(date)
    }
    
    func removeDate(pos: Int){
        dates.remove(at: pos)
    }
    
    func getGuests() -> [Guest]{
        return guests
    }
    
    func addGuest(guest: Guest){
        guests.append(guest)
    }
    
    func removeGuest(pos: Int){
        guests.remove(at: pos)
    }
    
    func getAttractions() -> [Attraction]{
        return attractions
    }
    
    func addAttraction(attraction: Attraction){
        attractions.append(attraction)
    }
    
    func removeAttraction(pos: Int){
        attractions.remove(at: pos)
    }
    
    func getMap() -> String{
        return map
    }
    
    func setMap(map: String){
        self.map = map
    }
    
    func getImageName() -> Image{
        return self.imageName
    }
    
    func setImageName(imageName: Image){
        self.imageName = imageName
    }
}


var event1 = Event(city: "porto alegre", dates: ["15/04","16/04"], guests: guests1, attractions: listOfAttraction1, map: "", imageName: Images().poa)
var event2 = Event(city: "portão", dates: ["26/05","27/05","28/05"], guests: guests2, attractions: [], map: "", imageName: Images().portao)
