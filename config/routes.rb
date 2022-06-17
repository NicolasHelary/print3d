Rails.application.routes.draw do
  devise_for :users

  root to: 'products#index'
  resources :products, only: %i[index show] do
    resources :demands, except: [:index, :destroy]
    resources :demands, only: [:destroy], as: :delete_demand
    resources :products_categories, only: %i[show]
  end
  resources :categories, only: %i[show]
  resources :demands, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
