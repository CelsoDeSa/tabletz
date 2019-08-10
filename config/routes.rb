Rails.application.routes.draw do

  resources :reviews
  resources :posts


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "reviews/:url", to: redirect(path: "/%{url}")
  get "/:url", to: "reviews#show", as: "url"

  root 'posts#index'
end
