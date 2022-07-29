//
//  ContentView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 02/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = Model()
    
    var body: some View {
        TabView{
            HomePageView(model: model)
            .tabItem{
                Image(systemName: "list.dash")
                Text("Actugames")
            }
            FavoritesView(model: model, games: model.user.fav)
            .tabItem{
                Image(systemName: "star.fill")
                Text("Favoris")
            }
            UserProfilView(model: model)
            .tabItem{
                Image(systemName: "person.crop.square.fill")
                Text("Profil")
            }
            EvenementView()
            .tabItem{
                Image(systemName: "calendar")
                Text("Evenements")
            }
        }
        .accentColor(Color("orange"))
        
            }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UITabBarController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let standardAppearance = UITabBarAppearance()
        standardAppearance.stackedItemPositioning = .centered
        standardAppearance.backgroundColor = UIColor(Color("titrefond"))
        standardAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(Color("bleutitre"))]
        standardAppearance.stackedLayoutAppearance.normal.iconColor = UIColor(Color("bleutitre"))
        
     
        tabBar.standardAppearance = standardAppearance
    }
}
