//
//  UserFriendView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 04/02/2022.
//

import SwiftUI

struct UserFriendView: View {
    var user: User
    var body: some View {
        ZStack{
        Color("fondapp")
        VStack(alignment: .leading) {
            Divider()
            UserInfoView(user: user)
            Divider()
            FriendPreferenceView(title1: "Platformes", title2: "Catégories séléctionnées", user: user)
            Spacer()
        }
        }
    }
}

struct UserFriendView_Previews: PreviewProvider {
    static var previews: some View {
        UserFriendView(user: sampleData[0])
    }
}
