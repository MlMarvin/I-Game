//
//  Category.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 07/02/2022.
//

import Foundation

struct Category: Identifiable {
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

var categories = [
    Category(name: "Action"), Category(name: "Aventure"), Category(name: "Battle Royale"), Category(name: "Combat"),
    Category(name: "FPS"), Category(name: "Gestion"), Category(name: "Jeux de société"), Category(name: "Multijoueur"), Category(name: "Plateforme"), Category(name: "Simulation"), Category(name: "Solo"), Category(name: "Sport"), Category(name: "RPG"), Category(name: "Free-to-play"), Category(name: "Course"), Category(name: "Open World"), Category(name: "Survie"), Category(name: "Horreur"), Category(name: "Tir")]
