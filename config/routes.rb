Rails.application.routes.draw do

  resources :posts

  # get "posts/index"
  #
  # get "posts/show"
  #
  # get "posts/new"
  #
  # get "posts/edit"

  # get "welcome/index"
  # get 'index' => 'welcome#index'
  # get "welcome/about"
  get 'about' => 'welcome#about'

  root 'welcome#index'

  end
