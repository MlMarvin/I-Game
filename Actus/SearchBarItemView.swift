//
//  SearchBarItemView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct SearchBarItemView: View {
    var body: some View {
        SearchBar()
    }
}

struct SearchBar: UIViewRepresentable {
    typealias UIViewType = UISearchBar
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Entrez le nom d'un jeu"
        searchBar.tintColor = UIColor(Color("orange"))
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
    }
    
    func makeCoordinator() -> SearBarCoordinator {
        return SearBarCoordinator()
    }
    
    class SearBarCoordinator: NSObject, UISearchBarDelegate {
    }
}

struct SearchBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarItemView()
    }
}
