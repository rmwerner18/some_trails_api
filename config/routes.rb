Rails.application.routes.draw do
  resources :favorites
  resources :hikes
  resources :hikes, only: %i[create show] do
    get :photo, on: :member
  end
  resources :trails
  resources :users, only: [:create, :show, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
