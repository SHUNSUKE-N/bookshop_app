Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  get 'users/show'

  resources :bookshops do
  end
end