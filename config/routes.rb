Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'application#index'
  get '/home', to: 'users#home', as: 'home'

  resources :games do
    resources :reviews
  end

  get 'games/:id/details', to: 'games#details'
  get 'reviews/:id/content', to: 'reviews#content'

  get '/users/sign_out', to: 'application#index'
  get '/users/index', to: 'users#index'
  get '/users/:id/show', to: 'users#show', as: 'user'
  delete '/games/:game_id/reviews/:id', to: 'reviews#destroy', as: 'delete_review'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
