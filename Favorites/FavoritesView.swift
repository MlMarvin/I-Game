//
//  FavoritesView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var model: Model
    let games: [VideoGame]
    @State private var offsetX: CGFloat = 0
    @State private var maxOffsetX: CGFloat = -1
    
    var body: some View {
        NavigationView {
            GeometryReader { reader in
                let screenSize = reader.size
                ZStack {
                    backgroundCarousel(screenSize: screenSize)
                    gamesCarousel(reader: reader)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            }.navigationTitle("Favoris").navigationViewStyle(StackNavigationViewStyle())
                .onAppear(perform: {
                    setNavigationAppearance()
                })
        }
    }
    
    func backgroundCarousel(screenSize: CGSize) -> some View {
        let bgwidth: CGFloat = screenSize.height * CGFloat(games.count)
        let scrollPercentage = offsetX / maxOffsetX
        let clampedPercentage: CGFloat = 1 - max(0, min(scrollPercentage, 1))
        let posX: CGFloat = (bgwidth - screenSize.height) * clampedPercentage
        //
        return HStack(spacing: 0) {
            ForEach(games.reversed()) { game in
                Image(game.imgGame)
                    .resizable()
                    .scaledToFit()
                    .frame(height: screenSize.height)
                    .frame(maxHeight: .infinity)
                    .blur(radius: 1.7)
                    .scaleEffect(1.9)
                    .clipped()
                    .overlay(Color.black.opacity(0.2))
                    .background(ignoresSafeAreaEdges: .top)
                
            }
            //    Mis en page Haute et G -
        }
        .frame(width: bgwidth)
        .position(x: bgwidth / 2 - posX,
                  y: screenSize.height / 1.3)
    }
    
    func gamesCarousel(reader: GeometryProxy) -> some View {
        let screenSize = reader.size
        let itemWidth: CGFloat = screenSize.width * 0.9
        let paddinX: CGFloat = (screenSize.width - itemWidth) / 2
        let spacing: CGFloat = 10
        
        return ScrollView(.horizontal) {
            HStack(spacing: 0) {
                GeometryReader { geo -> Color in
                    DispatchQueue.main.async {
                        offsetX = (geo.frame(in: .global).minX - paddinX) * -1
                        let scrollContentWidth = itemWidth * CGFloat(games.count) + spacing * CGFloat(games.count - 1)
                        let maxOffsetX = scrollContentWidth + 2 * paddinX - screenSize.width
                        if self.maxOffsetX == -1 {
                            self.maxOffsetX = maxOffsetX
                        }
                        //                        print(offsetX / maxOffsetX)
                    }
                    return Color.clear
                    
                }
                .frame(width: 0)
                HStack (spacing: spacing) {
                    ForEach(games) { game in
                        GameItemView(model: model, game: game, screenSize: screenSize, width: itemWidth)
                    }
                }
            }
            .padding(.horizontal, paddinX)
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(model: Model(), games: videoGames)
    }
}

struct GameItemView: View {
    @ObservedObject var model: Model
    
    let game: VideoGame
    let screenSize: CGSize
    let width: CGFloat
    var body: some View {
        
        GeometryReader { reader in
            
            let midX = reader.frame(in: .global).midX
            let distance = abs(screenSize.width / 2 - midX)
            let damping: CGFloat = 2
            let percentage = abs(distance / (screenSize.width / 2) / damping - 1)
            
            VStack {
                NavigationLink(destination: GameDetailsView(model: model, game: game).navigationBarItems(trailing:
                                                                                                            Button(action: {
                    handlefav(model: model, game: game)
                }) {
                    Image(systemName: "heart.fill").foregroundColor(Color(model.user.fav.contains{$0.title == game.title } ? "orange" : "bleutitre")).font(.system(size: 20))
                        .imageScale(.large)
                }).navigationTitle(game.title).navigationViewStyle(StackNavigationViewStyle())
                                .onAppear(perform: {
                    setNavigationAppearance()
                })) {
                    Image(game.imgGame)
                        .resizable()
                        .scaledToFit()
                        .frame(width: width)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                        .shadow(color: .black.opacity(0.6), radius: 20, y: 20)
                    
                }
                Text(game.title)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                HStack(spacing: 5) {
                    ForEach(1..<6) { i in
                        Image(systemName: i <= Int(game.rating*5/20) ? "star.fill" : "star")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                }
                
            }
            .frame(maxHeight: .infinity)
            .scaleEffect(percentage)
            
        }
        .frame(width: width)
        .frame(maxWidth: .infinity)
        //        .background(Color.blue)
    }
    
    private func handlefav(model: Model, game: VideoGame) {
        model.user.fav.contains { $0.title == game.title } ? model.user.fav.removeAll { $0.title == game.title} : model.user.fav.append(game)
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
