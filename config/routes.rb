# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movies, except: %i[new edit]
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  # get '/movies' => 'movies#index'
  # get '/movies/:id' => 'movies#show'
  # delete '/movies/:id' => 'movies#destroy'
  # patch '/movies/:id' => 'movies#update'
  # post '/movies' => 'movies#create'
  resources :users, only: %i[index show]
end
