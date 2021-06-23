Rails.application.routes.draw do

  # get '/home', to: 'pages#home'
  get '/sobre', to: 'pages#sobre'
  get '/contato', to: 'pages#contato'
  get '/termos_de_uso', to: 'pages#termos_de_uso'
  get '/politica_de_privacidade', to: 'pages#politica_de_privacidade'
  # get "reviews/:url", to: redirect(path: "/%{url}")
  
  resources :reviews
  resources :posts


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/dispositivos/:device", to: "reviews#index"
  get "/:device/:url", to: "reviews#show"
  get "posts/:url", to: redirect(path: "/%{url}")
  get "/:url", to: "posts#show" 

  root 'pages#home'
end
