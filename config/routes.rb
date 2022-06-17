Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :demands do
    resources :offers, only: %i[new create destroy edit update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
