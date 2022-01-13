Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end

  devise_for :users
  root to: 'pages#welcome'

  resources :students do
    member do
      resources :observations
    end
  end

  resources :observations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  delete "observations/:id", to: "observations#destroy"
  get "observations/:id/edit", to: "observations#edit"
  patch "observations/:id", to: "observations#update"

  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/welcome', to: 'pages#welcome', as: :welcome
  get '/home', to: 'pages#home', as: :home
end
