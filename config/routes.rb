Rails.application.routes.draw do
  resources :users, only: [:index, :create, :update, :destroy]
  resources :my_vaccines, only: [:index, :create]
  resources :vaccines, only: [:index, :show]

  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# Rails.application.routes.draw do

#   resources :users, only: [:index, :create, :update, :destroy] 
  
#   resources :my_vaccines, only: [:index, :create]
  
#   resources :vaccines, only: [:index, :show]
  
#   get '/profile', to: 'users#show'
#   post '/login', to: 'auth#create'

#   root "welcome#index"
# end