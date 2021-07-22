Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'lists/new', to: 'lists#new'
  # get 'bookmarks/new', to: 'bookmarks#new'
  # get '/lists', to: 'lists#index'
  # get 'lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create'
  # post 'bookmarks', to: 'bookmarks#create'
  # delete '/bookmarks/:id', to: 'bookmarks#destroy'

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
