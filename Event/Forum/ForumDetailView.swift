//
//  ForumDetailView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct ForumDetailView: View {
    let imageForum: String
    let imageLien: String
    let imageLien2: String
    let lien: String
    let desc:String
    
    var body: some View{
        
        ZStack{
            Color("fondapp")
            VStack(spacing: 20){
                HStack{
                    Image(systemName: "bonjour").foregroundColor(Color("orange")).font(.system(size: 20))
                    Text("-")
                    Link(lien, destination: URL(string:lien)!)
                    Spacer()
                }.padding(.top, 20.0).padding(.leading, 5.0)
                Divider()
                Text(desc).font(.body).padding(5)
                Divider()
                    .padding(.bottom, -20.0)
                Image(imageLien2).resizable()
                    .frame(width:UIScreen.main.bounds.width, height: 230)
                Spacer()
            }
        }
    }
}

struct ForumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ForumDetailView(imageForum: "bonjour", imageLien: "journalg1", imageLien2: "journalg2", lien: "https://www.journaldugeek.com/category/jeux-video/", desc: "Le Journal du Geek ou JDG, anciennement Geek Inside, est un site web, de type webzine qui traite des nouvelles technologies.Il vous propose tous les jours les meilleures actualités en high-tech, POP Culture, jeux vidéo, sciences, espace, mobilité.")
    }
}
