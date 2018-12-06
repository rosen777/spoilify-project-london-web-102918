Rails.application.routes.draw do
  resources :user_purchases
  resources :investments
  get 'welcome/home'

  get 'sessions/new'

  get 'users/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]

  root 'welcome#home'
  resources :charities, only: [:index, :show, :new]
  resources :purchases
  resources :investments, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/energyinvestments' => 'purchases#energyinvestments'
end
