Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#home'

  devise_for :users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user_page'
  get '/users/:id/edit', to: 'users#edit', as: 'user_edit'
  patch '/users/:id/update', to: 'users#update'

  resources :pets
end
