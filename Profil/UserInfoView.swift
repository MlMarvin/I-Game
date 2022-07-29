//
//  UserInfoView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 04/02/2022.
//

import SwiftUI

struct UserInfoView: View {
    var user: User
    
    var body: some View {
        HStack{
            Image(user.img).resizable().frame(width: 85, height: 85 ).clipShape(Circle())
            VStack(alignment: .leading){
                HStack{
                    Text("\(user.pseudo),").bold().font(.largeTitle)
                    let age = calculateAge(birthdate: user.birthdate)
                    
                    Text("\(age) ans").font(.title).bold().baselineOffset(-5)
                }
                Text(user.mail).font(.subheadline).foregroundColor(Color("orange"))
            }
        }.padding(.leading)
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(user: sampleData[0])
    }
}

func calculateAge(birthdate: DateComponents) -> Int{
    var age: Int
    let calendar = Calendar.current
    let now = calendar.dateComponents([.year, .month, .day], from: Date())
    let ageComponents = calendar.dateComponents([.year], from: birthdate, to: now)
    age = ageComponents.year!
    return age
}
