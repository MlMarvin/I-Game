//
//  GameDetailsView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct GameDetailsView: View {
    @ObservedObject var model: Model
    var game: VideoGame
    
    var body: some View {
        ZStack {
            Color("fondapp")
            ScrollView {
                VStack {
                    
                    Image(game.imgGame)
                        .resizable()
                        .frame( width: UIScreen.main.bounds.width, height: 260)
                    HStack {
                        Text("Catégories: ").bold().foregroundColor(Color("titrefond")).underline(color: Color("titrefond"))
                        ForEach(game.category) { cat in
                            Text(cat.name)
                            Divider()
                        }
                        Spacer()
                    }.padding(5)
                    Divider()
                    GeometryReader { platform in
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(game.platforms) { platform in
                                    Text(platform.name)
                                    Divider()
                                }
                            }.padding(.leading, 5.0)
                        }
                    }
                    Divider().padding(.top, 10.0)
                    HStack {
                        Image(game.imgPegi)
                            .resizable()
                            .frame(width: 70, height: 70)
                        
                        Divider()
                            .padding(.trailing, 20.0)
                        VStack {
                            Text("Année de sortie:") .bold().foregroundColor(Color("titrefond")).underline(color: Color("titrefond"))
                            Text(String(game.productionDate))
                            
                        }
                        Divider()
                            .padding(.leading, 20.0)
                        VStack {
                            Text("Note:").bold().foregroundColor(Color("titrefond")).underline(color: Color("titrefond"))
                            Text("\(String(format: "%.2f", game.rating))/20")
                        }
                        .padding(.leading, 10.0)
                    }.padding([.top, .trailing])
                    ZStack {
                        Color("titrefond")
                        HStack {
                            Text("Description")
                                .font(.title2)
                                .foregroundColor(Color("bleutitre"))
                                .padding(5)
                            Spacer()
                        }
                    }
                    Text(game.desc).font(.body).multilineTextAlignment(.leading).padding(5)
                    Divider()
                    HStack {
                        Text("Prix moyen:").bold().foregroundColor(Color("titrefond")).underline(color: Color("titrefond"))
                        Text("\(String(format: "%.2f", game.averagePrice)) €")
                            .padding(5)
                        Spacer()
                    }
                }
            }
        }
    }
    
    private func handlefav(model: Model, game: VideoGame) {
        model.user.fav.contains { $0.title == game.title } ? model.user.fav.removeAll { $0.title == game.title} : model.user.fav.append(game)
    }
}


struct GameDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailsView(model: Model(), game: videoGames[1])
    }
}

private func setNavigationAppearance() {
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor(Color("titrefond"))
    
    let attrs: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor(Color("orange")),
        //.font: UIFont.monospacedSystemFont(ofSize:40, weight: .black)
    ]
    appearance.largeTitleTextAttributes = attrs
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
}
