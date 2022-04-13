 Rails.application.routes.draw do
   resources :capsules
   resources :charities
   resources :needs

   get 'home/index'
   get 'pages/contact'
   get 'pages/quisommesnous'
   get 'pages/nosvideos'
   get 'pages/lesaides'
   get 'pages/cgu'
   get 'pages/mentionslegales'
   

   root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
