Rails.application.routes.draw do
  devise_for :users
  resources :assistentes
  resources :contatos
  # get 'home/index'
  # get 'home/about'
  #root 'home#index'
  # root 'contatos#index'
  root 'home#welcome'
end
