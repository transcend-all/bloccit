Rails.application.routes.draw do

  # get 'sponsored_posts/show'
  #
  # get 'sponsored_posts/new'
  #
  # get 'sponsored_posts/edit'

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  resources :users, only: [:new, :create]
    
    resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root 'welcome#index'

  end
