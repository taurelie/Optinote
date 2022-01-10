Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end

  devise_for :users
  root to: 'pages#home'

  resources :students do
    member do
      resources :observations
    end
  end

  resources :observations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
