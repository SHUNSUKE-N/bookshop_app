Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  get 'users/show'
  get 'comments/new'
  get 'likes/index'
  resources :bookshops do
  end
end