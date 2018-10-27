Rails.application.routes.draw do
  get 'users/show'

  devise_for :users

  resources :posts do
    member do
      put 'like' => 'posts#upvote'
      put 'unlike' => 'posts#downvote'
    end
  end
  
  resources :users
  get 'welcome/home'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
