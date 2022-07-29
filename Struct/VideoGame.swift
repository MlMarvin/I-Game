//
//  VideoGame.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import Foundation

struct VideoGame: Identifiable {
    var id = UUID()
    
    let title: String
    var desc: String
    var imgGame: String
    var category: [Category]
    var platforms: [Platform]
    let imgPegi: String
    var averagePrice: Double
    var rating: Double
    let productionDate: Int
}

//var sampleGame = VideoGame(title: "Pokemon: Arceus Legends", desc: "Arceus est un Pokémon fabuleux considéré comme le créateur de la région Sinnoh, autrefois connue sous le nom de Hisui. C'est d'ailleurs dans cette version historique du territoire que le dieu qui donne son nom au jeu choisit de transporter un jeune ado, grace à une faille spatio-temporelle.", imgGame: "PokemonLegend", category: [Category (name:"RPG"),Category (name:"Aventure")], platforms: [Platform(name: "Switch")], imgPegi: "Pegi7", averagePrice: 40.0, rating: 12.0, productionDate: 2022)

var videoGames = [
    VideoGame(title: "Pokemon: Arceus Legends", desc: "Arceus est un Pokémon fabuleux considéré comme le créateur de la région Sinnoh, autrefois connue sous le nom de Hisui. C'est d'ailleurs dans cette version historique du territoire que le dieu qui donne son nom au jeu choisit de transporter un jeune ado, grace à une faille spatio-temporelle.", imgGame: "PokemonLegend", category: [Category (name:"RPG"),Category (name:"Aventure")], platforms: [Platform(name: "Switch")], imgPegi: "Pegi7", averagePrice: 40.0, rating: 18.0, productionDate: 2022),
    VideoGame(title: "Old Shool Musical", desc: "Old School Musical est un jeu de rythme rétro à la bande originale intégralement chiptune qui vous replongera dans le monde merveilleux des jeux   8-bit. Les protagonistes du jeu, Tib et Rob, se sont entraînés depuis leur enfance pour devenir de vaillants héros de jeux vidéo. Mais un jour, leur jeu se retrouve corrompu par une invasion de bugs, les propulsant dans un voyage improbable pour retrouver leur mère disparue et sauver nos jeux d'enfance. Votre talent, leur réussite : chaque fausse note de votre part éloignera Tib et Rob de leur but... Alors soyez réglés comme du papier à musique !", imgGame: "OldSchoolMusical", category: [Category (name:"Musical")], platforms: [Platform(name: "PC"), Platform(name: "Mobile"), Platform(name: "Switch")], imgPegi: "Pegi7", averagePrice: 12.0, rating: 18.0, productionDate: 2018),
    VideoGame(title: "Naruto Shippuden", desc: "Naruto Shippuden Ultimate Ninja Storm 4 est un jeu de combat inspiré du manga et de l'anime japonais Naruto. Le mode Histoire permet de revivre les derniers événements du manga, dans des combats à contre un ou à trois contre trois, ou face à d'énormes boss.", imgGame: "NarutoShippuden", category: [Category (name:"Combat"), Category(name: "Action")], platforms: [Platform(name: "PC"), Platform(name: "PlayStation 4"), Platform(name: "Switch"), Platform(name: "Xbox One")], imgPegi: "Pegi12", averagePrice: 17.0, rating: 17.0, productionDate: 2016),
    VideoGame(title: "Minecraft", desc: "Minecraft est un jeu vidéo de type aventure « bac à sable » (construction complètement libre) développé par le Suédois Markus Persson, alias Notch, puis par la société Mojang Studios.", imgGame: "Minecraft", category: [Category (name:"Open world"), Category(name: "Survival")], platforms: [Platform(name: "PC"), Platform(name: "mobile"), Platform(name: "Switch"), Platform(name: "PlayStation 4")], imgPegi: "Pegi7", averagePrice: 20.0, rating: 18.0, productionDate: 2018),
    VideoGame(title: "Assasin's Creed Valhalla", desc: "Incarnez Eivor, Viking légendaire en quête de gloire. Attaquez vos ennemis, faites grandir votre colonie, et affermissez votre pouvoir politique afin de mériter votre place parmi les dieux, au Valhalla.", imgGame: "Assassin'sCreed", category: [Category (name:"Combat"), Category(name: "Open World"), Category(name: "RPG"), Category(name: "Action")], platforms: [Platform(name: "PC"), Platform(name: "PlayStation 4"), Platform(name: "Xbox One"), Platform(name: "PlayStation 5")], imgPegi: "Pegi18", averagePrice: 22.0, rating: 18.0, productionDate: 2020),
    VideoGame(title: "Child Of Light", desc: "Child of Light est un jeu vidéo de rôle et un jeu de plateforme développé par Ubisoft Montréal et publié par Ubisoft. Le jeu met en scène Aurora, une princesse prisonnière d'un autre monde.", imgGame: "ChildOfLight", category: [Category (name:"Platforme"), Category(name: "RPG")], platforms: [Platform(name: "PC"), Platform(name: "PlayStation 4"), Platform(name: "Xbox One"), Platform(name: "PlayStation 3"), Platform(name: "Xbox 360")], imgPegi: "Pegi18", averagePrice: 12.0, rating: 18.0, productionDate: 2014),
    VideoGame(title: "Super Smash Bros Melee", desc: "Il est la suite de Super Smash Bros., sorti sur Nintendo 64 en 1999, et il a été suivi de Super Smash Bros. ... Le jeu a été développé par HAL Laboratory avec Masahiro Sakurai à la tête de la production. Le titre réunit des personnages tirés de jeux vidéo Nintendo comme Super Mario, The Legend of Zelda et Pokémon.", imgGame: "SuperSmashBros", category: [Category (name:"Combat")], platforms: [Platform(name: "Game Cube")], imgPegi: "Pegi12", averagePrice: 15.0, rating: 15.0, productionDate: 2001),
    VideoGame(title: "Resident Evil 4", desc: "L'histoire se déroule six ans après les événements de Resident Evil 2. Elle met en scène l'agent Leon S. Kennedy, envoyé en Espagne par le gouvernement américain pour sauver la fille du président des États-Unis, enlevée et retenue en otage par une mystérieuse secte.", imgGame: "ResidentEvil4", category: [Category (name:"Horreur"), Category(name: "Tir")], platforms: [Platform(name: "PlayStation 2"), Platform(name: "Game Cube"), Platform(name: "Xbox 360")], imgPegi: "Pegi18", averagePrice: 15.0, rating: 19.0, productionDate: 2002)
]
