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
    private var image: String
    private var listOfattraction: [Attraction]
    
    
    init(name: String, category: String, description: String, socialMedia: String, image: String, listOfAttraction: [Attraction]) {
        self.name = name
        self.category = category
        self.description = description
        self.socialMedia = [socialMedia]
        self.image = image
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
    
    func getImage() -> String{
        return self.image
    }
    
    func setImage(image: String){
        self.image = image
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
