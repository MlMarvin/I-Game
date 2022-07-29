//
//  EditPreferenceView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 07/02/2022.
//

import SwiftUI

struct EditCategoryView: View {
    @ObservedObject var model: Model
    let columns = [GridItem(), GridItem()]
    
    var body: some View {
        ZStack{
            Color("fondapp")
        VStack {
            VStack {
                ZStack {}.frame(height: 40)
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns) {
                        ForEach(categories) { category in
                            ZStack {
                                Button(action: {
                                    onTap(cat: category)
                                }) {
                                    Rectangle().clipShape(Capsule()).frame(height: 40).foregroundColor(Color(
                                        model.user.categories.contains {
                                            $0.name == category.name
                                        } ? "darkpurple" : "bleu"
                                    ))
                                }
                                Text(category.name).foregroundColor(.white)
                            }
                        }.padding(.horizontal)
                    }
                }
            }
        }
        }
    }
    
    func onTap(cat: Category) {
        model.user.categories.contains { $0.name == cat.name } ? model.user.categories.removeAll { $0.name == cat.name } : model.user.categories.append(cat)
    }
    
}

struct EditCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        EditCategoryView(model: Model())
    }
}
