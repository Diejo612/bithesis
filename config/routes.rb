Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/recursos', to: "pages#recursos", as: 'recursos'
  get '/articulo1', to: "pages#articulo1", as: 'articulo1'
  get '/cursos', to: "pages#cursos", as: 'cursos'
  resources :lines, only: [:index, :show]
  resources :task_statuses, only: [:update]
  resources :station_statuses, only: [:update]
  resources :interviews, only: [ :new, :create]
  resources :meetings, only: [ :new, :create]
  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
