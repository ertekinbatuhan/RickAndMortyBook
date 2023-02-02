//
//  DataClass.swift
//  RickAndMortyBook
//
//  Created by Batuhan Berk Ertekin on 2.02.2023.
//

import Foundation
import UIKit



class RickyAndMorty{
        
    
    var name  : String
    var image  :  UIImage
    var about : String
  
    
    
    init(name: String, image: UIImage, about: String) {
        self.name = name
        self.image = image
        self.about = about
    }
    
}
