Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "portfolio", to: "pages#portfolio"
  get "apropos", to: "pages#apropos"
  # get "contact", to: "pages#contact"

  resources :contacts, only: [ :new, :create, :index ]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
