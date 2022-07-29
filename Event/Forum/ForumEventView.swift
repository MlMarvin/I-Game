//
//  ForumEventView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct ForumEventView: View {
    var body: some View {
        ZStack{
            Color("fondapp")
        VStack{
        ForEach(forums){ forum in
            NavigationLink (destination: ForumDetailView(imageForum: forum.imageForum,imageLien: forum.imageLien,imageLien2: forum.imageLien2, lien: forum.lien, desc: forum.desc).navigationBarTitle(forum.title)){
                VStack{
                    HStack{
                        Image(systemName: "bonjour").foregroundColor(Color("orange"))
                        Text(forum.title).font(.title2).foregroundColor(Color("bleu")).underline()
                        Spacer()
                        Image(forum.imageLien).resizable().frame(width: 150, height: 50)
                    }.padding(5)
                }
                    
                    
                    
                
            }
            
            Divider()
        }
        }.padding()
    }
    }
}

struct ForumEventView_Previews: PreviewProvider {
    static var previews: some View {
        ForumEventView()
    }
}
