Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :home, only: [:index]
  resources :schedules, only: [:index, :show]
  resources :reviews, only: [:index, :show]
  resources :theaters, only: [:index, :show]
  resources :movies, only: [:index, :show] do#, shallow: true
    resources :comments, only: [:create, :destroy]#:edit, :update, 
  end
end
