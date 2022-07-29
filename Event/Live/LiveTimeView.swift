//
//  LiveTimeView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct LiveTimeView: View {
    var body: some View {
        ZStack{
            Color("fondapp")
        VStack{
            ForEach(lives){ live in
                Link(destination: URL(string: live.lien)!) {
                    VStack{
                        HStack{
                            Image(live.imageLive).resizable().frame(width: 50, height: 50).cornerRadius(10)
                            VStack(alignment: .leading, spacing: 5){
                                Text(live.title).font(.title3).foregroundColor(Color("bleu")).underline()
                                    Text(live.plateforme)
                            }
                            Spacer()
                        }
                    }.padding(5)
                }                
                Divider()
            }
        }
    }
    }
}

struct LiveTimeView_Previews: PreviewProvider {
    static var previews: some View {
        LiveTimeView()
    }
}
