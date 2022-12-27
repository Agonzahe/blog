Rails.application.routes.draw do
  get '/', to: 'pages#index'
  get '/contacto', to: 'pages#contacto'
  get '/articulo', to: 'pages#articulo'
  get '/articulo/new', to: 'pages#new'
  post '/articulo', to: 'pages#create'
end
