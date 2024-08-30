Rails.application.routes.draw do
  get 'prototypes/index'
  devise_for :users
  root to: "prototypes#index"
  resources :users, only: :show
  resources :prototypes do
    resources :comments
  end
end
