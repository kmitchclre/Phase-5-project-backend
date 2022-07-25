Rails.application.routes.draw do
  resources :transactions
  resources :products
post '/login',    to: 'sessions#create'
delete '/logout',   to: 'sessions#destroy'
post "/signup", to: "users#create"

resources :users, only: [:create, :show, :index] do 
resources :items, only: [:create, :show, :index, :destroy]
 end

end
