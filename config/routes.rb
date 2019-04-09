Rails.application.routes.draw do
  root 'static_pages#home'

  resources :bookshops do
  end
end