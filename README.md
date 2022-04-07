# README
* Une fois le repos cloné, lancer "npm install" dans le terminal pour installer tailwincss et ses dépendences.

* Développement : 
Pour développer, lancer à la fois la commande "rails s" et "npx tailwindcss -i app/assets/stylesheets/application.css -o app/assets/stylesheets/tailwind-build.css --watch" dans deux terminaux pour compiler le fichier tailwind-build.css et lancer le serveur rails.

* Commande pour lancer le build de tailwind : 
npx tailwindcss -i app/assets/stylesheets/application.css -o app/assets/stylesheets/tailwind-build.css --watch

* Drapeau : 
--watch : ce drapeau permet de dire à tailwind d'automatiquement recompiler les fichiers lorsque vous changez quelque chose.
"-i" veut dire input (c'est le fichier dans lequel tailwind va chercher les classes).
"-o" veut dire output (c'est le fichier de sortie que l'on charge sur la page).



