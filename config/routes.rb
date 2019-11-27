Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :show, :destroy]
      resources :scooters, only: [:index, :create, :update, :show, :destroy]
      resources :bookings, only: [:index, :create, :show, :destroy]
    end
  end
  post '/login', to: 'login#login'
end
