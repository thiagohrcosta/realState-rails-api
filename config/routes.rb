Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      resources :rentals
    end
  end

  root to: "pages#home"

  resources :rentals, only: [:index, :show]

  resources :painels, only: [:index]
end
