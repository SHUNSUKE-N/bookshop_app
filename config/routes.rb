Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'
  devise_for :users
  get 'users/show'
  get 'comments/new'
  get 'likes/index'
  resources :bookshops do
  end
end