//
//  UserProfilView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 04/02/2022.
//

import SwiftUI

struct UserProfilView: View {
    @ObservedObject var model: Model
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("fondapp")
                ScrollView {
                    VStack(alignment: .leading, spacing: 5.0) {
                        Divider()
                        UserInfoView(user: model.user)
                        Divider()
                        UserPreferenceView(model: model,title1: "Plateformes", title2: "Catégories séléctionnées", user: model.user)
                        ZStack{
                            Color("titrefond")
                            HStack{
                                Text("Amis").font(.title2).bold().foregroundColor(Color("bleutitre")).padding(4)
                                Spacer()
                            }
                        }.frame(height: 40)
                        HStack(spacing: 30) {
                            ForEach(model.user.friends) { friend in
                                NavigationLink(destination: UserFriendView(user: friend).navigationTitle("Amis")) {
                                            VStack {
                                                Image(friend.img)
                                                    .resizable()
                                                    .frame(width: 85, height: 85)
                                                    .clipShape(Circle())
                                                Text(friend.pseudo).foregroundColor(Color("orange"))
                                            }
                                }
                            }
                                Button {
                                    
                                } label: {
                                    VStack {
                                        Image(systemName: "person.crop.circle.badge.plus").font(.system(size: 85)).foregroundColor(Color("darkpurple"))
                                        Text(" ")
                                    }
                                }
                        }.padding()
                    }
                }
                .navigationBarTitle("Profil").navigationViewStyle(StackNavigationViewStyle())
                    .onAppear(perform: {
                        setNavigationAppearance()
                    })
            }
        }
    }
}

struct UserProfilView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfilView(model: Model())
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
