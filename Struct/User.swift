//
//  User.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 04/02/2022.
//

import Foundation

struct User: Identifiable {
    var id: UUID
    let pseudo: String
    var mail: String
    var img: String
    var birthdate: DateComponents
    var categories: [Category]
    var platforms: [Platform]
    var friends: [User]
    var fav: [VideoGame]
    
    init(id: UUID = UUID(), pseudo: String, mail: String, img: String, birthdate: DateComponents, categories: [String], platforms: [String], friends: [User], fav: [VideoGame]) {
        self.id = id
        self.pseudo = pseudo
        self.mail = mail
        self.img = img
        self.birthdate = birthdate
        self.categories = categories.map { Category(name: $0)}
        self.platforms = platforms.map { Platform(name: $0)}
        self.friends = friends
        self.fav = fav
    }
}

class Model: ObservableObject {
    @Published var user: User
    
    init() {
        self.user = User(pseudo: "El Gamer", mail: "elGamer@gmail.com", img: "coolpp", birthdate: DateComponents(year: 1998, month: 8, day: 8), categories: ["Action","Aventure","RPG","FPS", "Gestion"], platforms: ["PlayStation 5", "Xbox Série X", "PC"], friends: sampleData, fav: [ VideoGame(title: "Naruto Shippuden", desc: "Naruto Shippuden Ultimate Ninja Storm 4 est un jeu de combat inspiré du manga et de l'anime japonais Naruto. Le mode Histoire permet de revivre les derniers événements du manga, dans des combats à contre un ou à trois contre trois, ou face à d'énormes boss.", imgGame: "NarutoShippuden", category: [Category (name:"Combat"), Category(name: "Action")], platforms: [Platform(name: "PC"), Platform(name: "PlayStation 4"), Platform(name: "Switch"), Platform(name: "Xbox One")], imgPegi: "Pegi12", averagePrice: 17.0, rating: 17.0, productionDate: 2016)
        ])
    }
}

var sampleData: [User] =
    [
        User(pseudo: "Eric Son", mail: "ericson@gmail.com", img: "duck", birthdate: DateComponents(year: 1990, month: 11, day: 6), categories: ["Action","Multijoueur","Free-to-play","Course","RPG"], platforms: ["Playstion 4", "Switch", "PC"], friends: [], fav: []),
        User(pseudo: "Bill Bizar", mail: "billbizar@gmail.com", img: "bulbizarre", birthdate: DateComponents(year: 1999, month: 11, day: 6), categories: ["Action","Multijoueur","Free-to-play","Course","RPG"], platforms: ["Playstation 2", "Xbox One"], friends: [], fav: [])
    ]
