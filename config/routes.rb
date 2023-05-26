Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  root to: 'homes#top'
  get "/Homes/About" => "homes#about", as: "about"
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
