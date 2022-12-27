Rails.application.routes.draw do
  get '/', to: 'pages#index'
  get '/contacto', to: 'pages#contacto'
  get '/articulo', to: 'pages#articulo'
  get '/articulo/new', to: 'pages#new'
  post '/articulo', to: 'pages#create'

  #delete '/articulo/:id',   to: 'pages#delete'
  #patch '/articulo/:id',    to: 'pages#editar'
  get '/articles/:id',      to: 'pages#ver', as: :articles
  #get '/articulo/:id/edit', to: 'pages#edit', as: :edit_articulo
end
