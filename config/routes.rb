Rails.application.routes.draw do

  # get "reviews/:url", to: redirect(path: "/%{url}")
  
  resources :reviews
  resources :posts


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/:device/:url", to: "reviews#show"
  get "posts/:url", to: redirect(path: "/%{url}")
  get "/:url", to: "posts#show"  

  root 'posts#index'
end
