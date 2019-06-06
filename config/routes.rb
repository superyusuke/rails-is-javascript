Rails.application.routes.draw do
  resources :users
  root 'application#hello'
  get 'hello/index'
  get 'hello' , to: 'hello#index'
end