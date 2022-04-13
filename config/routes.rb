 Rails.application.routes.draw do
   resources :capsules
   resources :charities
   resources :needs
   get 'pages/quisommesnous'
   get 'home/index'
   root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
