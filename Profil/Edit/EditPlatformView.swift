//
//  EditPlatformView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct EditPlatformView: View {
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
                        ForEach(platforms) { platform in
                            ZStack {
                                Button(action: {
                                    onTap(platform: platform)
                                }) {
                                    Rectangle().clipShape(Capsule()).frame(height: 40).foregroundColor(Color(
                                        model.user.platforms.contains {
                                            $0.name == platform.name
                                        } ? "darkpurple" : "bleu"
                                    ))
                                }
                                Text(platform.name).foregroundColor(.white)
                            }
                        }.padding(.horizontal)
                    }
                }
            }
        }
        }
    }
    
    func onTap(platform: Platform) {
        model.user.platforms.contains { $0.name == platform.name } ? model.user.platforms.removeAll { $0.name == platform.name } : model.user.platforms.append(platform)
    }
}

struct EditPlatformView_Previews: PreviewProvider {
    static var previews: some View {
        EditPlatformView(model: Model())
    }
}
