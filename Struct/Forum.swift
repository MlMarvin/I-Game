//
//  Forum.swift
//  I-Game
//
//  Created by Nirina Ratovomanana on 08/02/2022.
//

import Foundation

struct Forum: Identifiable {
    var id = UUID()
    
    var imageForum:String
    var title: String
    var imageLien: String
    var imageLien2: String
    var lien: String
    var desc:String
    
}
var forums = [
    Forum(imageForum: "bonjour", title: "JDG", imageLien: "journalg1", imageLien2: "journalg2", lien: "https://www.journaldugeek.com/category/jeux-video/", desc: "Le Journal du Geek ou JDG, anciennement Geek Inside, est un site web, de type webzine qui traite des nouvelles technologies.Il vous propose tous les jours les meilleures actualités en high-tech, POP Culture, jeux vidéo, sciences, espace, mobilité."),
    Forum(imageForum: "bonjour", title: "Begeek", imageLien: "begeek1", imageLien2: "begeek2", lien: "https://www.begeek.fr/jeux-video", desc: "Begeek.fr est le site web d'un magazine qui informe sur les nouveautés high-tech. La boutique œuvre dans les secteurs Geek, les jeux vidéo, le web, les mobiles, la science, la culture et tout ce qui est high-tech. Le blog partage ses actualités à l'intermédiaire de son flux RSS ainsi que son compte twitter. Le site fournit également un espace de recherche qui permettra d'affiner vos recherches. Le plus avec Begeek, c'est qu'il propose à ses visiteurs un rubrique bons plans qui vous permettra de dénicher ce dont vous avez besoin dans les meilleures conditions qui soit et surtout avec un excellent rapport de qualité prix."),
    Forum(imageForum: "bonjour", title: "Discord", imageLien: "discord1", imageLien2: "discord2", lien: "https://discord.com/invite/zgQ9tDu", desc: "Discord est l'endroit où tu peux créer un lieu pour tes communautés et tes amis. L'endroit où vous pouvez garder le contact et vous amuser grâce aux salons textuels, vocaux ou par vidéo. Que tu fasses partie d'un club scolaire, d'un groupe de gamers, d'une communauté d'art internationale, ou simplement d'une bande d'amis qui veulent passer du temps ensemble, Discord est la façon la plus facile de bavarder tous les jours et de se retrouver plus souvent."),
   Forum(imageForum: "bonjour", title: "GameKult", imageLien: "gamekult1", imageLien2: "gamekult2", lien: "https://www.gamekult.com", desc: "Gamekult est un site web français spécialisé dans le jeu vidéo fondé par Kévin Kuipers et Clément Apap, lancé en décembre 2000. Le site propose des actualités, des dossiers, des tests et des présentations de jeux vidéo, dont il traite également l'aspect financier, juridique et social."),
   Forum(imageForum: "bonjour", title: " JeuOnline", imageLien: "joln1", imageLien2: "joln2", lien: "https://www.jeuxonline.info", desc: "JeuxOnLine permet de suivre au quotidien l'actualité des jeux-vidéo, de publier ses propres actualités à propos de ses jeux préférés, de consulter des guides de jeu rédigés par d'autres joueurs, de partager des articles, de diffuser des vidéos, de consulter des millions de messages sur nos forums, de publier ses propres contributions, d'animer et modérer ses propres espaces de discussions et bien plus encore."),
     Forum(imageForum: "bonjour", title: "Yubigeek", imageLien: "yubigeek1", imageLien2: "yubigeek2", lien: "https://www.yubigeek.com/category/jeux-consoles", desc: "Yubigeek est une communauté consacrée aux geeks et aux gameurs. Le site publie tout type d'article sur le high-tech et autre geekeries tels que les objets connectés et les gadgets ainsi que des astuces et des conseils qu'il faut absolument savoir sur google, word press ou encore sur les différents réseaux sociaux. Le site regroupe un grand nombre d'information pratique et tactique qu'il a classé en plusieurs catégories."),
    Forum(imageForum: "bonjour", title: "Gentside", imageLien: "gentside1", imageLien2: "gentside2", lien: "https://gaming.gentside.com", desc: "Alors que les rôles hommes-femmes se redistribuent, Gentside accompagne les jeunes hommes, les aide à s'accomplir et à trouver leur place. Gentside est le premier média qui parle aux hommes, de leurs passions (sport, actu, gaming, voyage, mode), mais aussi de leurs préoccupations quotidiennes et des grandes questions qu'ils se posent à cette étape de leur vie : amour, sexualité, bien-être, travail, paternité ? Sur un ton complice, ludique et pédagogique, Gentside propose des contenus engageants sur des sujets d'actualité comme la place de l'homme dans la famille et la société et la consommation responsable et durable."),
    Forum(imageForum: "bonjour", title: "GameBlog", imageLien: "gameblog1", imageLien2: "gameblog2", lien: "https://www.gameblog.fr", desc: "Gameblog est un site d'actualités sur les jeux vidéos. Il publie de nombreux articles sur divers sujets autour du jeu vidéo (informatique, astuces, bons plans, tests de jeux et de matériel, vidéos gaming, podcasts etc.).Ce site s'est imposé comme l'une des références dans le monde du jeu vidéo, comme étant une source régulière d'informations, d'actu et de contenus distrayants pour les gamers du dimanche, les gamers passionnés ainsi que les geeks touche à tout. Vous pourrez par exemple retrouver des tests de jeux, sur PC, Mac, Android, IOS, Playstation 3, Playstation 4, Xbox 360 ou Xbox One, ainsi que des actus sur les nouvelles plateformes et consoles à venir."),
    Forum(imageForum: "bonjour", title: "Reddit", imageLien: "reddit1", imageLien2: "reddit2", lien: "https://www.reddit.com/r/jeuxvideo/", desc: "Reddit est un site web communautaire américain d’actualités sociales fonctionnant via le partage de signets permettant aux utilisateurs de soumettre leurs liens et de voter pour les liens proposés par les autres utilisateurs.")
]
