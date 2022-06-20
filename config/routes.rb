Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: %i[index show] do
    resources :demands, except: %i[index destroy]
    resources :demands, only: [:destroy], as: :delete_demand
    resources :products_categories, only: %i[show]
  end
  resources :demands do
    resources :offers, only: %i[new create destroy edit update]
  end
  resources :categories, only: %i[show]
  get "/profile", to: "pages#profile"
  resources :demands, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
