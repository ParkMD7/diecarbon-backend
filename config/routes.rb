Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :goals
      resources :user_goals

      post '/login', to: 'auth#create'
      # post '/login', to: 'users#login'
      get '/profile', to: 'users#profile'
    end
  end
end
