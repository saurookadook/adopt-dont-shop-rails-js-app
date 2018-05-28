Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#home'

  resources :users, only: [:index, :show, :create, :edit, :update, :destroy]
  get '/signup', to: 'users#new', as: 'new_user_registration'

  get '/login', to: 'sessions#new', as: 'new_user_session'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'destroy_user_session'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#new'

  get '/employees/signup', to: 'employees#new', as: 'new_employee_registration'
  get '/employees/login', to: 'employee_sessions#new', as: 'new_employee_session'
  post '/employees/login', to: 'employee_sessions#create', as: 'employee_login'
  delete '/employees/logout', to: 'employee_sessions#destroy', as: 'destroy_employee_session'

  resources :employees, only: [:index, :show, :create, :edit, :update, :destroy]

  get '/shelters/by_city', to: 'shelters#by_city', as: 'shelters_by_city'
  get '/shelters/by_state', to: 'shelters#by_state', as: 'shelters_by_state'
  resources :shelters

  get '/users/:id/pets_list', to: 'users#pets_list', as: :user_pets_list
  post '/users/:id/add_pet', to: 'users#add_pet', as: :user_add_pet

  resources :users, only: [:show] do
    resources :pets, only: [:index, :show, :new, :edit]
  end

  resources :shelters, only: [:show] do
    patch '/shelters/:id/pets/:id/adopt', to: 'shelters#adopt', as: 'adopt_pet'
    resources :pets, only: [:index, :show, :new, :create, :edit, :update]
    resources :employees, only: [:index, :show]
  end

  resources :pets
end
