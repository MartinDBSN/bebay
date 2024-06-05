Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :families
  resources :bookings
  resources :children, only: [:new, :create, :edit, :update, :destroy]
end
