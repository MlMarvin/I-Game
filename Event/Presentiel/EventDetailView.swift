//
//  EventDetailView.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import SwiftUI

struct EventDetailView: View {
    let imageLocation: String
    let location: String
    let imageDate: String
    let date: String
    let imageLien: String
    let lien: String
    let imageSalon1 : String
    let desc: String
    let imageSalon2: String
    
    var body: some View{
        ScrollView{
            ZStack{
                Color("fondapp").ignoresSafeArea()
                VStack{
                    VStack(alignment: .leading, spacing: 6){
                        HStack{
                            Image(systemName: "globe.americas.fill").foregroundColor(Color("orange"))
                            Text(location).foregroundColor(Color("titrefond"))
                            Spacer()
                            
                        }
                        HStack{
                            Image(systemName:"calendar").foregroundColor(Color("orange"))
                            Text(date).foregroundColor(Color("titrefond"))
                        }
                        HStack{
                            Image(systemName: "bonjour").foregroundColor(Color("orange"))
                            Text("-").foregroundColor(Color("titrefond"))
                            Link(lien, destination: URL(string:lien)!)
                        }
                    }.padding()
                    Image(imageSalon1).resizable()
                        .frame(width:UIScreen.main.bounds.width, height: 230)
                    Text(desc).font(.body).padding(5)
                    Divider()
                    Image(imageSalon2).resizable()
                        .frame(width:UIScreen.main.bounds.width, height: 230)
                    
                }
            }
        }
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(imageLocation: "globe.americas.fill", location: "- Bordeaux", imageDate: "calendar", date: "- 27 au 29/05/22 ", imageLien: "bonjour", lien: "https://bordeauxgeekfest.com", imageSalon1: "bordeauxgeek1", desc: "Le Bordeaux Geek Festival est un festival qui brasse toutes les tendances de la culture geek : cet ??v??nement a pour ambition de rassembler la communaut?? geek ?? travers diff??rents domaines : Jeux vid??o, Comics, High-Tech, Mondes Parall??les, Web-Culture et Science-Fiction. Pendant ces 3 jours, des projections, des ateliers, des expositions et des spectacles seront organis??s ainsi que des dizaines de stands, spectacles, tournois, conf??rences et rencontres avec des invit??s.", imageSalon2: "bordeauxgeek2")
    }
}
