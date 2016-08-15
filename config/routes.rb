Rails.application.routes.draw do
  devise_for :users

  resources :events, only: [:new, :create, :show]

  root 'pages#home'
end
