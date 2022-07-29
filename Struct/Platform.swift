//
//  Platform.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 07/02/2022.
//

import Foundation

struct Platform: Identifiable {
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String){
        self.id = id
        self.name = name
    }
}

var platforms = [Platform(name: "Nintendo Ds"), Platform(name: "Nintendo Dsi"), Platform(name: "Nintendo 3Ds"), Platform(name: "Nintendo Switch"), Platform(name: "PC"), Platform(name: "PlayStation 2"), Platform(name: "PlayStation 3"), Platform(name: "PlayStation 4"), Platform(name: "PlayStation 5"), Platform(name: "Xbox 360"), Platform(name: "Xbox One"), Platform(name: "Xbox Série S"), Platform(name: "Xbox Série X"), Platform(name: "Mobile"), Platform(name: "GameCube")]
