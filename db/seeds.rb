# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Needs

alimentation = Need.where(name: 'Alimentation').first_or_create
emploi = Need.where(name: 'Emploi').first_or_create
formation = Need.where(name: 'Formation').first_or_create
logement = Need.where(name: 'Logement').first_or_create
adminstration = Need.where(name: 'Admnistration').first_or_create
sante = Need.where(name: 'Santé').first_or_create

#Charities

secours_pop = Charity.where(name: 'Secours Populaire').first_or_create
secours_pop.description = "Le Secours Populaire est une association reconnue d’utilité publique “agir pour un monde plus juste et plus solidaire”. L’association permet ainsi de s’émanciper et trouver sa place de citoyen. Issu du peuple, animé par lui, le Secours populaire promeut une relation d’égal à égal véritablement unique et un accueil inconditionnel. Présent partout, au bout de la rue comme au bout du monde avec son réseau de partenaires, il valorise systématiquement l’initiative comme mode d’action. L’association est profondément décentralisée et chacun peut ainsi agir : actions d’urgence, actions dans la durée, accompagnement global, sur les plans matériel, alimentaire, médical, moral, juridique, de la formation, de l’insertion sociale et professionnelle, ainsi que de l’accès au droit, à la culture et aux loisirs, au numérique, etc. Bénévoles comme partenaires, entreprises et donateurs, adultes comme enfants dès le plus jeune âge… tout le monde est invité à passer à l’action, à s'émanciper, à vivre la solidarité jour après jour. Ancrant sa vision sur la volonté d’un monde plus solidaire, le Secours populaire s’abstient de tout clivage : il rassemble et crée du lien autour des valeurs partagées."
secours_pop.save


singa = Charity.where(name: 'Singa').first_or_create
singa.description = "“Créer la société de demain”, c’est ainsi que Singa crée une communauté autour de la diversité humaine. Que vous soyez réfugié, demandeur d’asile, une personne local ou bien immigrant, l’insertion social est à porté de main. Singa vous apporte de nombreuses ressources et opportunités dans le but de fonder un réel réseau culturel, professionnel ou encore dans la recherche de logement. Depuis sa création en 2012, les statistiques de Singa prouve que l’innovation social et culturel germe de la création des liens et des réfugiés."
singa.catchphrase = "Les talents ne s’arrêtent pas aux frontières."
singa.phone = "+33 6 17 80 24 55"
singa.email = "contact@singa.fr"
singa.adress = "87 Quai des Queyries"
singa.website = "https://singafrance.com"
singa.country = "France"
singa.city = "Bordeaux"
singa.zipcode = "33100"
singa.save

#Capsule

capsule = Capsule.where(charity: secours_pop, need: alimentation).first_or_create
capsule.first_name = 'Alaa'
capsule.video = '699029249'
capsule.poster = 'https://i.vimeocdn.com/video/1413371886-7bcc569ada7f4a9049463716c6915187139139d4d41a431d2923a5a43c33f932-d'
capsule.quote = "Il faut aller travailler avec l'associtaion Singa pour faire grandir son projet"
capsule.save
