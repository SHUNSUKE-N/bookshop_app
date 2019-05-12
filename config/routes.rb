Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'

  devise_for :users
  resources :users, only: :show

  resources :bookshops do
    resources :comments, only: [:create]
  end

  resources :likes, only: [:create]
  resources :comments, only: :destroy
end