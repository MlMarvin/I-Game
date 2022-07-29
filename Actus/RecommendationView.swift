//
//  RecommendationView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct RecommendationView: View {
    var videoGame: VideoGame
    
    var body: some View {
        ZStack {
            Image(videoGame.imgGame)
                .resizable()
                
                .frame(width:UIScreen.main.bounds.width)
            
            ZStack {
                Rectangle()
                    .frame(height: 50)
                    .opacity(0.6)
                    .blur(radius: 3)
                Text(videoGame.title)
                    .font(.title3)
                    .frame(width: UIScreen.main.bounds.width, height:15)
                    .foregroundColor(.white)
            }
            .offset(y:85)
            
        }
    }
}

struct RecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationView(videoGame: videoGames[0])
    }
}
