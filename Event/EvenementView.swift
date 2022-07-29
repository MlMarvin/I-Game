//
//  EvenementView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct EvenementView: View {
    @State private var evenementType = 0
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("fondapp").ignoresSafeArea()
                ScrollView{
                    VStack{
                        Picker("Quel type d'évènement?", selection: $evenementType) {
                                Image(systemName:"globe.americas.fill").tag(0)
                            Image(systemName:"bonjour").tag(1)
                                Image(systemName:"antenna.radiowaves.left.and.right").tag(2)
                        }
                        .padding(.top, 4.0)
                            .pickerStyle(.segmented)
                    }
                    switch evenementType{
                        case 0 :
                        PresentielEventView()
                        case 1 :
                            ForumEventView()
                        default :
                            LiveTimeView()
                    }
                }
                .navigationBarTitle("Évènements").navigationViewStyle(StackNavigationViewStyle())
                .onAppear(perform: {
                    setNavigationAppearance()
                })
            }
        }
    }
}

struct EvenementView_Previews: PreviewProvider {
    static var previews: some View {
        EvenementView()
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
