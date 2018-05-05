Rails.application.routes.draw do
  resources :contract_details
  resources :areas
  resources :contracts
  resources :products
  resources :providers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
