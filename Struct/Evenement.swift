//
//  Evenement.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import Foundation

struct Evenement: Identifiable {
    var id = UUID()
    
    var title: String
    var imageLocation: String
    var location: String
    var imageDate: String
    var date: String
    var imageLien: String
    var lien: String
    var imageSalon1: String
    var desc: String
    var imageSalon2: String
}


var evenements = [
    Evenement(title: "Bordeaux Geek Fest", imageLocation: "globe.americas.fill", location: "- Bordeaux", imageDate: "calendar", date: "- 27 au 29/05/22 ",imageLien: "bonjour", lien: "https://bordeauxgeekfest.com", imageSalon1: "bordeauxgeek1",desc: "Le Bordeaux Geek Festival est un festival qui brasse toutes les tendances de la culture geek : cet événement a pour ambition de rassembler la communauté geek à travers différents domaines : Jeux vidéo, Comics, High-Tech, Mondes Parallèles, Web-Culture et Science-Fiction. Pendant ces 3 jours, des projections, des ateliers, des expositions et des spectacles seront organisés ainsi que des dizaines de stands, spectacles, tournois, conférences et rencontres avec des invités.",imageSalon2: "bordeauxgeek2"),
    Evenement(title: "Toulouse Game Show", imageLocation: "globe.americas.fill", location: "- Toulouse", imageDate: "calendar", date: "- 26 au 27/11/22",imageLien: "bonjour", lien: "https://tgs-toulouse.fr", imageSalon1: "imgtgs", desc: "Le TGS Toulouse est un salon familial où pendant 2 jours, les visiteurs peuvent déambuler dans les ruelles de nos espaces, et aller rencontrer des associations, proposant des animations, mêlées aux commerçants et éditeurs. Cette volonté de vouloir mélanger les professionnels (commerçants, éditeurs), et les associations est un des atouts du salon, qui permet de ne laisser personne à l’écart.",imageSalon2: "imgtgs2"),
    Evenement(title: "Japan Expo", imageLocation: "globe.americas.fill", location: "- Paris", imageDate: "calendar", date: "- 14 au 17/07/22", imageLien: "bonjour", lien: "https://www.japan-expo-paris.com/fr/",imageSalon1: "japanexpo1",desc: "Japan Expo est LE rendez-vous des amoureux du Japon et de sa culture, du manga aux arts martiaux, du jeu vidéo au folklore nippon, de la J-music à la musique traditionnelle : un évènement incontournable pour tous ceux qui s’intéressent à la culture japonaise et une infinité de découvertes pour les curieux. Le tout à 30 minutes de Paris !",imageSalon2: "japanexpo2"),
    Evenement(title: "Indie Game Lyon", imageLocation: "globe.americas.fill", location: "- Lyon", imageDate: "calendar", date: "- 19/02/22", imageLien: "bonjour", lien: "https://www.indiegamelyon.com" ,imageSalon1: "indielyon1",desc: "Indie Game Lyon est le salon où les indépendants peuvent venir présenter leur projet de jeu vidéo ; parce qu’ils sont en train de le créer et veulent le faire tester, parce qu’ils souhaitent le faire davantage connaître au grand public, pour le plaisir de pouvoir présenter leurs créations.",imageSalon2: "indielyon2"),
    Evenement(title: "Game Camp", imageLocation: "globe.americas.fill", location: "- Lille", imageDate: "calendar", date: "- 23 au 24/06/22", imageLien: "bonjour", lien: "https://gamecamp.fr",imageSalon1: "gamecamp1", desc: "Organisé à l’initiative du Syndicat National du Jeu Vidéo et de Game IN, le Game Camp France est le grand rendez-vous des professionnels du jeu vidéo français. 2 jours de conférences pour aborder 5 thématiques clés : Business/Marketing, Game Design, Image & Son, Production/RH et Technologie ; avec plus d’une trentaine de speakers, deux déjeuners et une soirée. Cet événement est réservé aux professionnels et futurs professionnels pour se réunir, échanger et enrichir ses connaissances sur l’industrie du jeu vidéo.",imageSalon2: "gamecamp2"),
    Evenement(title: "Laval Virtual Europe", imageLocation: "globe.americas.fill", location: "- Laval", imageDate: "calendar", date: "- 12 au 14/04/22", imageLien: "bonjour", lien: "https://www.laval-virtual.com/fr/accueil/",imageSalon1: "laval1", desc: "Le Laval Virtual est un salon international sur la réalité virtuelle et augmentée. Afin que tous les visiteurs y trouvent un intérêt  il y a sept thématiques qui sont mis en place sur la réalité virtuelle et augmentée : gaming, enfants, art & culture, recherche, usages professionnels, écoles & formations, sport. Dans chaque thématique, de nombreuses animations sont organisées pour explorer en profondeur ces nouvelles technologies.",imageSalon2: "laval2"),
    Evenement(title: "Angers Geek Fest", imageLocation: "globe.americas.fill", location: "- Angers", imageDate: "calendar", date: "- 02 au 03/04/2022", imageLien: "bonjour", lien: "https://angersgeekfest.com", imageSalon1: "angersgeek1", desc: "Lieu d’échanges et de partages, d’initiation et de divertissement. Toute la culture geek est représentée à travers de nombreuses animations : conférences, rencontres, projections, expositions, tournois, ateliers, défilés, concerts…", imageSalon2: "angersgeek2"),
    Evenement(title: "Paris Games Week", imageLocation: "globe.americas.fill", location: "- Paris", imageDate: "calendar", date:"- Semestre 2022" , imageLien: "bonjour", lien: "https://parisgamesweek.com", imageSalon1: "parisgw1", desc:"La Paris Games Week est un événement grand public à l’initiative de l’industrie, créé en 2010 par le SELL et porté par les constructeurs et éditeurs du Syndicat, tous tournés vers le même objectif : célébrer le jeu vidéo sous toutes ses formes et usages, et présenter les nouveautés de fin d’année et les innovations du secteur aux joueurs et familles.", imageSalon2: "parisgw2"),
    Evenement(title: "Japan Expo Sud", imageLocation: "globe.americas.fill", location: "- Marseille", imageDate: "calendar", date:"- 18 au 20/02/22" , imageLien: "bonjour", lien: "https://www.japan-expo-sud.com/fr/", imageSalon1: "japanexposud1", desc:"Japan Expo Sud est le lieu de toutes les rencontres. Si les visiteurs et visiteuses aiment à s’y retrouver dans une ambiance de fête, ils ont aussi de nombreuses occasions d’approcher les invités, d’échanger quelques mots avec eux le temps d’une dédicace, ou de les écouter parler de leur travail, leurs projets et leurs passions en conférence." , imageSalon2: "japanexposud2")
 ]
