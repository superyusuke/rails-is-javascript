Rails.application.routes.draw do
  get 'people/index'
  resources :users
  root 'application#hello'
  get 'hello/index'
  get 'hello' , to: 'hello#index'
  get 'hello/about', to: 'hello#about'
  get 'people', to: 'people#index'
  get 'people/add', to: 'people#add'
  post 'people/add', to: 'people#add'
  get 'people/:id', to: 'people#show'
end