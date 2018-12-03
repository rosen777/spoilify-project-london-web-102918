Rails.application.routes.draw do
  resources :charities, only: [:index, :show, :new]
  resources :purchases, only: [:index, :show, :new]
  resources :investments, only: [:index, :show, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
