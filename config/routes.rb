Rails.application.routes.draw do
  get 'show/users', to: 'development#index'
  get 'show/:id', to: 'development#show'
  get 'sign_in', to: 'login#index'
  get 'sign_up', to: 'register#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'home#index'
end
