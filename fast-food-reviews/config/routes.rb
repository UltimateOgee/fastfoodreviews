Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
    #set the param to slug here so we don't use the default restaurant id
    resources :restaurants, param: :slug
    resources :reviews, only: [:create, :destroy]
    end
  end
  #this is like a catch all, makes it so it doesn't interfere with react routes
  get '*path', to: 'pages#index', via: :all
end
