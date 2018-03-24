Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#home'

  devise_for :users
  resource :users

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
end
