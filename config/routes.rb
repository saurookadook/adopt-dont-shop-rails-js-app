Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#home'

  resources :users, only: [:index, :create, :edit, :update, :destroy]
  get '/users/new', to: 'users#new', as: 'new_user_registration'

  resources :employees

  get '/login', to: 'sessions#new', as: 'new_user_session'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'destroy_user_session'

  resources :shelters

  resources :users, only: [:show] do
    resources :pets, only: [:index, :show, :new]
  end

  resources :pets
  resources :shelters

  resources :shelters, only: [:show] do
    resources :pets, only: [:index, :show, :new]
  end
end
