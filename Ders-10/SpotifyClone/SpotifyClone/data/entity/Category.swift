//
//  Category.swift
//  SpotifyClone
//
//  Created by Kadirhan Keles on 25.09.2023.
//

import Foundation

class Category {
    var id: Int?
    var name: String?
    var image: String?
    var colorName: String?
    
    init(id: Int, name: String, image: String, colorName: String) {
        self.id = id
        self.name = name
        self.image = image
        self.colorName = colorName
    }
}
