Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#home'

  resources :users
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
