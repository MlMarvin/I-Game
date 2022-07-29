//
//  NewsView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct NewsView: View {
    var videoGame: VideoGame
    
    var body: some View {
        ZStack {
            Color("fondapp")
            VStack(alignment: .leading){
                HStack {
                    Image(videoGame.imgGame)
                        .resizable()
                        .scaledToFit()
                        .frame(height:60)
                    VStack{
                        HStack{
                            Text(videoGame.title)
                            Spacer()
                        }
                        HStack{
                            ForEach (videoGame.category) { cat in
                                Text ("\(cat.name)")
                            }
                            //Text( String(videoGame.category))
                                .foregroundColor(Color("titrefond"))
                            Spacer()
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(videoGame: videoGames[0])
    }
}
