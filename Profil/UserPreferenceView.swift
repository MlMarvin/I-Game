//
//  UserPreferenceView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 04/02/2022.
//

import SwiftUI

struct UserPreferenceView: View {
    @ObservedObject var model: Model
    var title1: String
    var title2: String
    var user: User
    let columns = [GridItem(), GridItem()]
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Color("titrefond")
                    HStack {
                        Text(title1)
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color("bleutitre"))
                            .padding(5)
                        Spacer()
                        NavigationLink(destination: EditPreferenceView(model: model, title: title1).navigationBarTitle(title1)){
                            Image(systemName: "pencil").foregroundColor(Color("orange")).font(.system(size: 30)).padding(5)
                        }
                    }
                }.frame(height: 40)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(user.platforms) { platform in
                            ZStack {
                                Rectangle().clipShape(Capsule()).frame(width: 130,height: 45).foregroundColor(Color("darkpurple"))
                                Text(platform.name).foregroundColor(.white)
                            }
                        }
                    }.padding(10)
                }
            }
            VStack {
                ZStack {
                    Color("titrefond")
                    HStack {
                        Text(title2)
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color("bleutitre")).padding(5)
                        Spacer()
                        NavigationLink(destination: EditPreferenceView(model: model,title: title2).navigationBarTitle(title2)){
                            Image(systemName: "pencil").foregroundColor(Color("orange")).font(.system(size: 30)).padding(5)
                        }
                    }
                }.frame(height: 40)
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns) {
                        ForEach(user.categories) { category in
                            ZStack {
                                Rectangle().clipShape(Capsule()).frame(width: 130, height: 45).foregroundColor(Color("darkpurple"))
                                Text(category.name).foregroundColor(.white)
                            }
                        }.padding(8)
                    }
                    .frame(width: 330.0)
                }.frame(height: 160)
            }
        }
    }
}

struct UserPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        UserPreferenceView(model: Model(),title1: "Plateformes", title2: "Catégories séléctionnées", user: sampleData[0])
    }
}
