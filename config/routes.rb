HaberdashFox::Application.routes.draw do
  get "items/index"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'walnut-studiolo' => 'pages#walnut-studiolo'

  get '/' => 'collection#index'
  get '/collection/:slug' => 'collection#show'
  
  get '/shops' => 'collection#shops'
  
  get '/items/:slug' => 'items#show'
end
