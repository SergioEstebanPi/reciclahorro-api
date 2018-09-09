Rails.application.routes.draw do
  resources :solicitudes
  resources :almacenes
  resources :ofertas
  resources :descuentos
  resources :beneficios
  resources :entregas
  resources :productos
  resources :residuos
  post 'user_token' => 'user_token#create'
  get '/users/current' => 'users#current'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
