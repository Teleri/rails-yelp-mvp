Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants, only: [:new, :show, :index, :create] do
    resources :reviews, only: [:new, :create]
  end
end
