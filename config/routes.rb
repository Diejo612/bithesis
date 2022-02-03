Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/recursos', to: "pages#recursos", as: 'recursos'
  get '/cursos', to: "pages#cursos", as: 'cursos'
  resources :lines, only: [:index]
  resources :interviews, only: [ :new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
