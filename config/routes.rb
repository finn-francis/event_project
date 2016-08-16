Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show] do
    get :invites, only: [:index]
  end

  resources :events, only: [:new, :create, :show]

  resources :invites, only: [:update]

  root 'pages#home'
end
