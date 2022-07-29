//
//  Live.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import Foundation

struct Live: Identifiable {
    var id = UUID()
    
    var title: String
    var imageLive: String
    var plateforme: String
    var lien: String
    
}

var lives = [
    Live(title: "Pokémon Legends: Arceus", imageLive:"ytb2", plateforme: "Youtube", lien: "https://www.youtube.com/channel/UCAWkvOEkDwLW1jcYdtk9UHQ"),
    Live(title: "Fortnite", imageLive:"tcw2", plateforme: "Twitch", lien: "https://www.twitch.tv/directory/game/Fortnite"),
    Live(title: "Esport Tournament", imageLive: "tcw2", plateforme: "Twitch", lien: "https://www.twitch.tv/directory/esports%22"),
    Live(title: "Z event", imageLive: "tcw2", plateforme: "Twitch", lien: "https://www.twitch.tv/zevent%22"),
    Live(title: "Minecraft", imageLive: "ytb2", plateforme: "Youtube", lien: "https://www.youtube.com/channel/UCQvWX73GQygcwXOTSf_VDVg"),
    Live(title: "Valorant", imageLive: "tcw2", plateforme: "Twitch", lien: "https://www.youtube.com/channel/UCiMRGE8Sc6oxIGuu_JxFoHg"),
    Live(title: "Call of Duty: Warzone", imageLive: "tcw2", plateforme: "Twitch", lien: "https://www.twitch.tv/directory/game/Call%20of%20Duty%3A%20Warzone"),
    Live(title: "Apex Legends", imageLive: "ytb2", plateforme: "Youtube", lien: "https://www.youtube.com/channel/UCtVufP_2Z8vCZjJOCPc3tjQ"),
    Live(title: "Tom Clancy's Rainbow Six Siege", imageLive: "tcw2", plateforme: "Twitch", lien: "https://www.twitch.tv/directory/game/Tom%20Clancy%27s%20Rainbow%20Six%20Siege%22"),
    Live(title: "League of Legends", imageLive: "tcw2", plateforme: "Twitch", lien: "https://www.twitch.tv/directory/game/League%20of%20Legends"),
    Live(title: "Naruto Shippuden : Ultimate Ninja Storm 4", imageLive: "tcw2", plateforme: "Twitch", lien: "https://www.twitch.tv/directory/game/Naruto%20Shippuden%3A%20Ultimate%20Ninja%20Storm%204")
   ]
