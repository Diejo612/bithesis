Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/resources', to: "pages#resources", as: 'resources'
  resources :lines, only: [:index]
  resources :interviews, only: [ :new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
