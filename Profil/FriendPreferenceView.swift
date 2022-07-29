//
//  FriendPreferenceView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct FriendPreferenceView: View {
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
                            .padding(4)
                        Spacer()
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
                            .foregroundColor(Color("bleutitre"))
                        Spacer()
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
                }.frame(height: 300)
            }
        }
    }
}

struct FriendPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        FriendPreferenceView(title1: "Plateformes", title2: "Catégories", user: sampleData[0])
    }
}
