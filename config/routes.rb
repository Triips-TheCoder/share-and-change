Rails.application.routes.draw do
  devise_for :admins
  resources :capsules, :charities, :needs
  get 'contact' => 'pages#contact', as: :contact
  get 'qui-sommes-nous' => 'pages#qui_sommes_nous', as: :qui_sommes_nous
  get 'cgu' => 'pages#cgu', as: :cgu
  get 'mentions-legales' => 'pages#mentions_legales', as: :mentions_legales
  get 'index_admin' => 'pages#index_admin', as: :index_admin
  root 'home#index'
end
