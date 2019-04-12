Rails.application.routes.draw do
  resources :tweets
  get 'home/index'

  devise_for :users
  root to: 'tweets#index'

  get 'profile' => 'home#userlist'
  post 'profile' => 'home#follow_unfollow'

  resources :user do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
