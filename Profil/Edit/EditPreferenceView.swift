//
//  EditPreferenceView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct EditPreferenceView: View {
    @ObservedObject var model: Model
    var title: String
    
    var body: some View {
        if title == "Plateformes" {
            EditPlatformView(model: model)
        } else {
            EditCategoryView(model: model)
        }
    }
}

struct EditPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        EditPreferenceView(model: Model(), title: "Catégories")
    }
}
