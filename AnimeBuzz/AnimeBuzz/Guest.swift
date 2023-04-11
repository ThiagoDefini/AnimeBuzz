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
    
    
    init(name: String, category: String, description: String, socialMedia: String, image: String, listOfAttraction: String) {
        self.name = name
        self.category = category
        self.description = description
        self.socialMedia = [socialMedia]
        self.image = image
        self.listOfattraction = [listOfattraction]
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
        socialMedia.append(socialMedia)
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
    
    func getListOfattraction() -> [String]{
        return listOfattraction
    }

    func addListOfattraction(listOfattraction: String){
        listOfattraction.append(listOfattraction)
    }
    
    func removeListOfattractiona(pos: Int){
        listOfattraction.remove(at: pos)
    }
}
