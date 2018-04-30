Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :agencies
  resources :areas
  resources :contracts
  resources :products
  resources :providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
