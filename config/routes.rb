Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bookings

  resources :families
  resources :children, only: [:new, :create, :edit, :update, :destroy]

  get "/users/dashboard", to: "bookings#index", as: :dashboard
  # get "/families/:id/bookings/new", to: "bookings#new", as: :booking_new
end
