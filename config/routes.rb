Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "brouillon", to: 'pages#brouillon'
  resources :observations
  # post "brouillon", to: 'pages#createb'

  resources :students

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
