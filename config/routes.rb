Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: %i[index show] do
    resources :demands
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
