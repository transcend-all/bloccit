Rails.application.routes.draw do

  resources :questions

  # get 'question/index'
  #
  # get 'question/new'
  #
  # get 'question/create'
  #
  # get 'question/show'
  #
  # get 'question/edit'
  #
  # get 'question/update'
  #
  # get 'question/destroy'

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
