//
//  HomePageView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct HomePageView: View {
    @ObservedObject var model: Model
    @State var mostRecent = true
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Color("fondapp")
                ScrollView{
                    
                    VStack(spacing:0){
                        SearchBar()
                        
                        //  Partie 'Recommendations', lié a la page 'Recommendation' et 'GameDetails'
                        
                        VStack(spacing:0){
                            ZStack{
                                Color("titrefond")
                                HStack(alignment: .top){
                                    Text("Recommandations")
                                        .font(.title2).foregroundColor(Color("bleutitre")).padding(4)
                                    Spacer()
                                }
                            }
                            .frame(height: 50)
                            
                            GeometryReader { videoGame in
                                ScrollView(.horizontal) {
                                    HStack(spacing:0){
                                        ForEach (videoGames) { videoGame in
                                            NavigationLink(destination: GameDetailsView(model: model, game:videoGame)
                                                            .navigationBarItems(trailing:
                                                                                    Button(action: {
                                                handlefav(model: model, game: videoGame)
                                            }) {
                                                Image(systemName: "heart.fill").foregroundColor(Color(model.user.fav.contains{$0.title == videoGame.title } ? "orange" : "bleutitre")).font(.system(size: 20))
                                                    .imageScale(.large)
                                            }).navigationTitle(videoGame.title).navigationViewStyle(StackNavigationViewStyle())
                                                            .onAppear(perform: {
                                                setNavigationAppearance()
                                            }))
                                            {
                                                RecommendationView(videoGame:videoGame)
                                            }
                                            .foregroundColor(.black)
                                        }
                                    }
                                }
                            }
                            
                        }
                        .frame(height:260)
                        
                        //  Partie 'Nouveautés', lié a la page 'News' et 'GameDetails'
                        
                        VStack (spacing:0){
                            ZStack {
                                Color("titrefond")
                                HStack{
                                    Text("Nouveautés")
                                        .font(.title2).padding(5).foregroundColor(Color("bleutitre"))
                                    Spacer()
                                }
                            }
                            .frame(height: 50)
                            
                            ForEach(videoGames) { videoGame in
                                
                                videoGame.productionDate >= 2021 ?
                                NavigationLink(destination: GameDetailsView(model: model, game:videoGame).navigationBarItems(trailing:
                                                                                                                                Button(action: {
                                    handlefav(model: model, game: videoGame)
                                }) {
                                    Image(systemName: "heart.fill").foregroundColor(Color(model.user.fav.contains{$0.title == videoGame.title } ? "orange" : "bleutitre")).font(.system(size: 20))
                                        .imageScale(.large)
                                }).navigationTitle(videoGame.title).navigationViewStyle(StackNavigationViewStyle())
                                                .onAppear(perform: {
                                    setNavigationAppearance()
                                }))
                                {
                                    NewsView(videoGame:videoGame)
                                }
                                : nil
                                Divider()
                            }
                        }
                        
                        //  Partie 'Dans mon budget', lié a la page 'News' et 'GameDetails'
                        
                        VStack (spacing:0){
                            ZStack {
                                Color("titrefond")
                                HStack{
                                    Text("Dans mon budget")
                                        .font(.title2).foregroundColor(Color("bleutitre")).padding(5)
                                    Spacer()
                                }
                            }
                            .frame(height: 50)
                            
                            ForEach(videoGames) { videoGame in
                                videoGame.averagePrice <= 20.0 ?
                                NavigationLink(destination: GameDetailsView(model: model, game:videoGame).navigationBarItems(trailing:
                                                                                                                                Button(action: {
                                    handlefav(model: model, game: videoGame)
                                }) {
                                    Image(systemName: "heart.fill").foregroundColor(Color(model.user.fav.contains{$0.title == videoGame.title } ? "orange" : "bleutitre")).font(.system(size: 20))
                                        .imageScale(.large)
                                }).navigationTitle(videoGame.title).navigationViewStyle(StackNavigationViewStyle())
                                                .onAppear(perform: {
                                    setNavigationAppearance()
                                }))
                                {
                                    NewsView(videoGame:videoGame)
                                }
                                : nil
                                Divider()
                            }
                        }
                        
                        //  Partie 'Le mieux notés', lié a la page 'News' et 'GameDetails'
                        
                        VStack (spacing:0){
                            ZStack {
                                Color("titrefond")
                                HStack{
                                    Text("Les mieux notés")
                                        .font(.title2).foregroundColor(Color("bleutitre")).padding(4)
                                    Spacer()
                                }
                            }
                            .frame(height: 50)
                            
                            ForEach(videoGames) { videoGame in
                                videoGame.rating >= 18.0 ?
                                NavigationLink(destination: GameDetailsView(model: model, game:videoGame).navigationBarItems(trailing:
                                                                                                                                Button(action: {
                                    handlefav(model: model, game: videoGame)
                                }) {
                                    Image(systemName: "heart.fill").foregroundColor(Color(model.user.fav.contains{$0.title == videoGame.title } ? "orange" : "bleutitre")).font(.system(size: 20))
                                        .imageScale(.large)
                                }).navigationTitle(videoGame.title).navigationViewStyle(StackNavigationViewStyle())
                                                .onAppear(perform: {
                                    setNavigationAppearance()
                                }))
                                {
                                    NewsView(videoGame:videoGame)
                                }
                                :
                                nil
                                Divider()
                            }
                        }
                        
                        //  Partie 'Catégorie : Aventure', lié a la page 'News' et 'GameDetails'
                        
                        VStack (spacing:0){
                            ZStack {
                                Color("titrefond")
                                HStack{
                                    Text("Catégorie : Aventure")
                                        .font(.title2).foregroundColor(Color("bleutitre")).padding(5)
                                    Spacer()
                                }
                            }
                            .frame(height: 50)
                            
                            ForEach(videoGames) { videoGame in
                                
                                ForEach(videoGame.category) { cat in
                                    cat.name == "Aventure" ?
                                    
                                    NavigationLink(destination: GameDetailsView(model: model, game:videoGame).navigationBarItems(trailing:
                                                                                                                                    Button(action: {
                                        handlefav(model: model, game: videoGame)
                                    }) {
                                        Image(systemName: "heart.fill").foregroundColor(Color(model.user.fav.contains{$0.title == videoGame.title } ? "orange" : "bleutitre")).font(.system(size: 20))
                                            .imageScale(.large)
                                    }).navigationTitle(videoGame.title).navigationViewStyle(StackNavigationViewStyle())
                                                    .onAppear(perform: {
                                        setNavigationAppearance()
                                    }))
                                    {
                                        NewsView(videoGame:videoGame)
                                    }
                                    : nil
                                }
                                Divider()
                            }
                        }
                        
                        //  Partie 'Catégorie : Action', lié a la page 'News' et 'GameDetails'
                        
                        VStack (spacing:0){
                            ZStack {
                                Color("titrefond")
                                HStack{
                                    Text("Catégorie : Action")
                                        .font(.title2).foregroundColor(Color("bleutitre")).padding(5)
                                    Spacer()
                                }
                            }
                            .frame(height: 50)
                            
                            ForEach(videoGames) { videoGame in
                                
                                ForEach(videoGame.category) { cat in
                                    cat.name == "Action" ?
                                    
                                    NavigationLink(destination: GameDetailsView(model: model, game:videoGame).navigationBarItems(trailing:
                                                                                                                                    Button(action: {
                                        handlefav(model: model, game: videoGame)
                                    }) {
                                        Image(systemName: "heart.fill").foregroundColor(Color(model.user.fav.contains{$0.title == videoGame.title } ? "orange" : "bleutitre")).font(.system(size: 20))
                                            .imageScale(.large)
                                    }).navigationTitle(videoGame.title).navigationViewStyle(StackNavigationViewStyle())
                                                    .onAppear(perform: {
                                        setNavigationAppearance()
                                    }))
                                    {
                                        NewsView(videoGame:videoGame)
                                    }
                                    : nil
                                }
                                Divider()
                            }
                        }
                    }
                }
                
                
                .navigationTitle("I-Game")
                .navigationViewStyle(StackNavigationViewStyle())
                .onAppear(perform: {
                    setNavigationAppearance()
                })
                .navigationBarItems(trailing: Image("coolpp")
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 40, height: 40)
                                        .shadow(color: .gray, radius: 2, x: 0, y: 1)
                                        .offset(y:-2)
                )
            }
        }
    }
    private func handlefav(model: Model, game: VideoGame) {
        model.user.fav.contains { $0.title == game.title } ? model.user.fav.removeAll { $0.title == game.title} : model.user.fav.append(game)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(model: Model())
    }
}

// Fonction pour modifier la couleur du la navigationBar

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
