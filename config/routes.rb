Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :families
  resources :bookings

  get "/users/dashboard", to: "bookings#index", as: :dashboard

end
