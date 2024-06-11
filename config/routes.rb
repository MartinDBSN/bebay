Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bookings do
    patch :change_status_to_accepted, to: "bookings#change_status_to_accepted", as: :validate
    patch :change_status_to_denied, to: "bookings#change_status_to_denied", as: :deny

  end

  resources :families
  resources :children, only: [:new, :create, :edit, :update, :destroy]

  get "/users/dashboard", to: "bookings#index", as: :dashboard
  # get "/families/:id/bookings/new", to: "bookings#new", as: :booking_new
end
