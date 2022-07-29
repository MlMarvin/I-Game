//
//  ForumView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct ForumView: View {
    @State private var evenementType = 1
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("aluminiumtest").ignoresSafeArea()
                ScrollView{
                    VStack{
                        Picker("Quel type d'évènement?", selection: $evenementType) {
                            Image(systemName:"globe.americas.fill").tag(0)
                            Image(systemName:"bonjour").tag(1)
                            Image(systemName:"antenna.radiowaves.left.and.right").tag(2)
                        }
                        .pickerStyle(.segmented)
                        Divider()
                    }
                    ForumEventView()
                }
            }
        }
    }
}

struct ForumView_Previews: PreviewProvider {
    static var previews: some View {
        ForumView()
    }
}
