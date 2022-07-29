//
//  PresentielEventView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct PresentielEventView: View {
    var body: some View {
        VStack {
            ForEach(evenements) { evenement in
                NavigationLink (destination: EventDetailView(imageLocation: evenement.imageLocation, location: evenement.location, imageDate: evenement.imageDate, date:evenement.date, imageLien: evenement.imageLien, lien: evenement.lien,imageSalon1:evenement.imageSalon1, desc: evenement.desc, imageSalon2: evenement.imageSalon2).navigationBarTitle(evenement.title)){
                    Divider()
                    VStack{
                    HStack{
                        Text(evenement.title).font(.title2).foregroundColor(Color("bleu")).underline().padding(5)
                        Spacer()
                    }
                        HStack{
                            VStack{
                                HStack{
                                    Image(systemName:evenement.imageLocation)
                                    Text(evenement.location).padding(-6).foregroundColor(Color("titrefond"))
                                    Spacer()
                                }.padding(.leading, 5.0)
                            Spacer()
                                HStack{
                                    Image(systemName:evenement.imageDate)
                                    Text(evenement.date).padding(-7).foregroundColor(Color("titrefond"))
                                    Spacer()
                                }
                                .padding(.leading, 5.0)
                            }.padding(-5)
                        }
                        Divider()
                    }
                    }
                }
            }
        }
    }

struct PresentielEventView_Previews: PreviewProvider {
    static var previews: some View {
        PresentielEventView()
    }
}
