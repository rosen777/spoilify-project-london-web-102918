Rails.application.routes.draw do
  resources :charities, only: [:index, :show]
  resources :purchases, only: [:index, :show]
  resources :investments, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
