Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      resources :rentals
    end
  end

  root to: "pages#home"

  resources :rentals

  delete "rentals/:id", to: "rentals#destroy", as: :destroy_rental

  resources :painels, only: [:index]
end
