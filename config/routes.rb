Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :show, :create]
  # dashboard
  get '/dashboard', to: 'accounts#index'

  root 'public_pages#index'
end
