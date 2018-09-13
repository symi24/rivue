Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :posts
  resources :users
  get 'welcome/home'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
