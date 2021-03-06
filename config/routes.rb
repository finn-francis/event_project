Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users, only: [:show, :update] do
    resource :profile, only: [:edit, :update, :show]
    resources :friend_requests, only: [:update, :index]
    resource :friend_request, only: [:create]
    resources :friendships, only: [:index]
    get :invites, only: [:index]
  end

  resources :events, only: [:new, :create, :show] do
    resource :comments, only: [:create]
    resource :tags, only: [:create]
  end

  resource :comments, only: [:destroy, :edit, :update]
  resources :invites, only: [:create, :update]
  resources :tags, only: [:index]

  root 'events#index'
end
