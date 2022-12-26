Rails.application.routes.draw do
  get '/', to: 'pages#index'
  get '/contacto', to: 'pages#contacto'
end
