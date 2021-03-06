Rails.application.routes.draw do
  
  devise_for :users
  root 'pages#home'
 
  get '/home',    to: 'pages#home'
  get '/help',    to: 'pages#help'
  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :lists
  resources :items, only: [:create, :destroy]
end
