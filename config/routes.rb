Rails.application.routes.draw do
  get 'show/users', to: 'development#index' 
  get 'show/:id', to: 'development#show'
  get 'login', to: 'login#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'home#index'
end
