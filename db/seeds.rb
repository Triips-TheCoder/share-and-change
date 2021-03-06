# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Needs

alimentation = Need.where(name: 'Alimentation').first_or_create
emploi = Need.where(name: 'Emploi').first_or_create
formation = Need.where(name: 'Formation').first_or_create
logement = Need.where(name: 'Logement').first_or_create
administration = Need.where(name: 'Administration').first_or_create
sante = Need.where(name: 'Santé').first_or_create

# Charities
secours_pop = Charity.where(name: 'Le secours populaire').first_or_create
secours_pop.description = "Le Secours Populaire est une association reconnue d’utilité publique “agir pour un monde plus juste et plus solidaire”. L’association permet ainsi de s’émanciper et trouver sa place de citoyen. Issu du peuple, animé par lui, le Secours populaire promeut une relation d’égal à égal véritablement unique et un accueil inconditionnel. Présent partout, au bout de la rue comme au bout du monde avec son réseau de partenaires, il valorise systématiquement l’initiative comme mode d’action. L’association est profondément décentralisée et chacun peut ainsi agir : actions d’urgence, actions dans la durée, accompagnement global, sur les plans matériels, alimentaire, médical, moral, juridique, de la formation, de l’insertion sociale et professionnelle, ainsi que de l’accès au droit, à la culture et aux loisirs, au numérique, etc. Bénévoles comme partenaires, entreprises et donateurs, adultes comme enfants dès le plus jeune âge… tout le monde est invité à passer à l’action, à s'émanciper, à vivre la solidarité jour après jour. Ancrant sa vision sur la volonté d’un monde plus solidaire, le Secours populaire s’abstient de tout clivage : il rassemble et crée du lien autour des valeurs partagées."
secours_pop.catchphrase = "Agir pour un monde plus juste et solidaire"
secours_pop.phone = "+33 05 56 92 79 92"
secours_pop.adress = "95 Quai de Paludate"
secours_pop.website = "https://wwww.secourspopulaire.fr"
secours_pop.country = "France"
secours_pop.city = "Bordeaux"
secours_pop.zipcode = "33800"
secours_pop.logo = "/assets/png/Secours_populaire.png"
secours_pop.save 

singa = Charity.where(name: 'Singa').first_or_create
singa.logo = "/assets/png/Singa.png"
singa.description = "Créer la société de demain”, c’est ainsi que Singa crée une communauté autour de la diversité humaine. Que vous soyez réfugié, demandeur d’asile, une personne locale ou bien immigrant, l’insertion sociale est à portée de main. Singa vous apportent de nombreuses ressources et opportunités dans le but de fonder un réel réseau culturel, professionnel ou encore dans la recherche de logement. Depuis sa création en 2012, les statistiques de Singa prouvent que l’innovation sociale et culturel germe de la création des liens et des réfugiés."
singa.catchphrase = "Les talents ne s’arrêtent pas aux frontières."
singa.phone = "+33 6 17 80 24 55"
singa.email = "contact@singa.fr"
singa.adress = "87 Quai des Queyries"
singa.website = "https://singafrance.com"
singa.country = "France"
singa.city = "Bordeaux"
singa.zipcode = "33100"
singa.save

konexio = Charity.where(name: 'Konexio').first_or_create
konexio.description = "Konexio, c’est qui ? Eh bien, ce sont des migrants, des réfugiés, des expatriés, des locaux, des femmes, des hommes, des jeunes. Tous s’engagent avec ardeur dans l’inclusion numérique des personnes dévalorisées et vulnérables qui possèdent eux aussi un potentiel. Konexio s’engage dans de réels défis sociaux, culturels, éducatifs et professionnels dans lesquels leurs familles devaient faire face dès leurs arrivées dans de nouveaux pays. Encore aujourd’hui, il existe un faussé entre inclusion numérique et inclusion sociale. De ce fait, Konexio permet à des personnes étrangères et isolées du monde professionnel de concilier des compétences requises recherchées par les employeurs."
konexio.logo = "/assets/png/Konexio.png"
konexio.catchphrase = "Les formations au numérique pour tous.tes."
konexio.phone = " +33 7 66 38 74 96"
konexio.email = "student@konexio.eu"
konexio.adress = "15 Rue de la Réunion"
konexio.website = "https://www.konexio.eu/index.html"
konexio.country = "France"
konexio.city = "Paris"
konexio.zipcode = "75020"
konexio.save

donbosco = Charity.where(name:'Don Bosco').first_or_create
donbosco.description = "Don Bosco est une association qui a vu le jour en 1945 sous la forme d’une société civile immobilière. Dès ses débuts, l’association abritait des jeunes victimes de la guerre et les “cas sociaux”. En 2009, l'Association s'ouvrait au champ de l'accueil du jeune enfant, sollicitée par des associations de parents gérant des équipements et qui expriment un besoin de soutien afin de pérenniser leur activité. Don Bosco y répond favorablement, consciente que ce secteur est un réel espace de prévention, d’accompagnement à la parentalité, un outil d’insertion permettant l’accès au travail, en particulier pour les femmes. Aujourd’hui, Don Bosco est un véritable mouvement entrepreneurial. Organisée en Union d’Économie Sociale et Solidaire, elle poursuit, depuis son origine le même but, à savoir intervenir auprès des publics les plus défavorisés, de leur famille, de leur entourage pour répondre à des besoins sociaux identifiés, mais elle agit également avec un objectif de transformation sociale, pour participer à la construction d’une société plus inclusive."
donbosco.logo = "/assets/png/Don_Bosco.png"
donbosco.catchphrase = "Répondre aux besoins sociaux c’est la mission de Don Bosco"
donbosco.phone = "+33 02 98 30 35 40"
donbosco.adress = "Direction Générale et Siège Administratif Parc d’Innovation de Mescoat "
donbosco.website = "https://www.donbosco.asso.fr/"
donbosco.country = "France"
donbosco.city = "Landerneau"
donbosco.zipcode = "29800"
donbosco.save

la_colline = Charity.where(name: 'La Colline').first_or_create
la_colline.logo = "/assets/png/lacolline.png"
la_colline.description = 'La colline est une association à Cenon. Le Centre social et culturel "La Colline", mène des projets sociaux, éducatifs et de loisirs avec les enfants, les jeunes et les familles. '
la_colline.catchphrase = "La colline le centre qui allie Education et Loisir."
la_colline.phone = "+33 5 57 77 90 30"
la_colline.adress = "2 rue Stéphane Mallarmé (Place François Mitterrand)"
la_colline.country = "France"
la_colline.city = "Cenon"
la_colline.zipcode = "33150"
la_colline.save 

lesgratuitsgirondesolidarite = Charity.where(name: "Les Gratuits Gironde Solidarité").first_or_create
lesgratuitsgirondesolidarite.description = "Les gratuites girondes solidarités est une association qui a pour but d’organiser, coordonner, réaliser des actions et des gestes de solidarité auprès des personnes vivantes dans la précarité et laisser à la rue à Bordeaux. Depuis plus de deux ans, les activités sont amenées par le biais d’un collectif. Cette association intercepte les échantillons promotionnels souvent gaspillés. De plus, elle récupère les produits d’hygiène, de thé, de café, soupes, cadeaux d’entreprises, d’événementiels, manifestation sportive. Ceci est disposé dans des boîtes à dons dans différents lieux en Gironde ou chez des particuliers. Par la suite, des kits sont reversés à des personnes en difficultés et laissés à la rue. Chaque semaine, deux distributions alimentaires, hygiène et vêtements sont organisés."
lesgratuitsgirondesolidarite.catchphrase = "Non au gaspillage, oui à la solidarité"
lesgratuitsgirondesolidarite.adress = "67 Rue Montgolfier"
lesgratuitsgirondesolidarite.website = "https://wwww.lesgratuits.org"
lesgratuitsgirondesolidarite.country = "France"
lesgratuitsgirondesolidarite.city = "Bordeaux"
lesgratuitsgirondesolidarite.zipcode = "33000"
lesgratuitsgirondesolidarite.logo = "/assets/png/Les_Gratuits_Gironde_Solidarite.png"
lesgratuitsgirondesolidarite.save 

csf = Charity.where(name: "La Confédération Syndicales des Familles").first_or_create
csf.description = "La C.S.F est une association qui agit avec les familles dans les domaines du quotidien (consommation, logement, éducation, surendettement, loisir). La C.S.F est reconnue et agréée comme organisation nationale de consommateurs siégeant dans différentes instances gestion."
csf.catchphrase = "Une association qui agit avec les familles au quotidien"
csf.phone = "+33 05 56 43 94 58"
csf.adress = "Bât le France, 9 Rue Montgolfier C109"
csf.website = "https://www.la-csf.org/"
csf.country = "France"
csf.city = "Mérignac"
csf.zipcode = "33700"
csf.logo = "/assets/png/csf.png"
csf.save 

#Capsule

capsule = Capsule.where(charity: singa, need: emploi).first_or_create
capsule.first_name = 'Alaa'
capsule.video = '699029249'
capsule.poster = '/assets/jpg/Alaa.jpg'
capsule.quote = "Il faut aller travailler avec l'association Singa pour faire grandir son projet."
capsule.save

capsuleMohammed = Capsule.where(charity: konexio, need: formation).first_or_create
capsuleMohammed.first_name = 'Mohammed'
capsuleMohammed.video = '699093849'
capsuleMohammed.poster = '/assets/png/Mohammed.png'
capsuleMohammed.quote = "Aujourd'hui, je m'en sors bien dans le numérique."
capsuleMohammed.save

capsuleMohammed = Capsule.where(charity: lesgratuitsgirondesolidarite, need: alimentation).first_or_create
capsuleMohammed.first_name = 'Mohammed'
capsuleMohammed.video = '699429672'
capsuleMohammed.poster = "/assets/png/Mohammed.png"
capsuleMohammed.quote = "Je remercie Gratuits Solidarité pour tous ces gestes."
capsuleMohammed.save 

capsuleThierno = Capsule.where(charity: donbosco, need: logement).first_or_create
capsuleThierno.first_name = 'Thierno'
capsuleThierno.video = '699359541'
capsuleThierno.poster = '/assets/png/Thierno.png'
capsuleThierno.quote = "Ils m'ont vraiment beaucoup aidé au niveau administratif, et accompagné dans tous les domaines."
capsuleThierno.save

capsuleEliverta = Capsule.where(charity: la_colline, need: formation).first_or_create
capsuleEliverta.first_name = 'Eliverta'
capsuleEliverta.video = '699364149'
capsuleEliverta.poster = '/assets/png/Eliverta.png'
capsuleEliverta.quote = "Pour s’intégrer, la chose la plus importante c’est la langue française."
capsuleEliverta.save

capsuleEliverta2 = Capsule.where(charity: secours_pop, need: logement).first_or_create
capsuleEliverta2.first_name = 'Eliverta'
capsuleEliverta2.video = '699370637'
capsuleEliverta2.poster = '/assets/png/Eliverta.png'
capsuleEliverta2.quote = "Secours Populaire aide les personnes en difficultés, pour le logement..."
capsuleEliverta2.save

capsuleEliverta = Capsule.where(charity: csf , need: formation).first_or_create
capsuleEliverta.first_name = 'Eliverta'
capsuleEliverta.video = '699376672'
capsuleEliverta.poster = '/assets/png/Eliverta.png'
capsuleEliverta.quote = "L'association fait un grand travail pour toutes les démarches administratives."
capsuleEliverta.save
