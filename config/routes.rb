Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end

  resources :my_bikes, only: [:new, :create, :edit, :update, :index, :destroy]

  resources :bookings, only: [:show, :index] do
    member do
      patch :approve  
    end
    member do
      patch :deny
    end
    member do
      patch :cancel
    end
  end
end
