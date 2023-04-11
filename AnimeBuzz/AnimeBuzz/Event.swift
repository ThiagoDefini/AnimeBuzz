//
//  Event.swift
//  AnimeBuzz
//
//  Created by Thiago Defini on 11/04/23.
//

import Foundation

class Event {
    private var city: String
    private var dates: [Date]
    private var guests: [Guest]
    private var attractions: [Attraction]
    private var map: String
    
    init(city: String, dates: [Date], guests: [Guest], attractions: [Attraction], map: String) {
        self.city = city
        self.dates = dates
        self.guests = guests
        self.attractions = attractions
        self.map = map
    }
    
    func getCity() -> String{
        return self.city
    }
    
    func setCity(city: String){
        self.city = city
    }
    
    func getDates() -> [Date]{
        return dates
    }
    
    func addDate(date: Date){
        dates.append(date)
    }
    
    func removeDate(pos: Int){
        dates.remove(at: pos)
    }
    
    func getGuestS() -> [Guest]{
        return guests
    }
    
    func addGuest(guest: Guest){
        guests.append(guest)
    }
    
    func removeGuest(pos: Int){
        guests.remove(at: pos)
    }
    
    func getAttractions() -> [Attractions]{
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
    
}
