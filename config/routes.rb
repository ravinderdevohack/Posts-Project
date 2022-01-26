Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }
  get 'users/index'
  get 'users/show'
  delete 'users/destroy'
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/show'
  get 'posts/edit'
  # post 'posts/draft'
  get 'posts/update'
  get 'posts/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  resources :posts do
    collection do
      get 'search'
      post 'draft'
    end

    member do
      post 'download'
      # post 'draft'
    end
  end
  # resources :users

  # get 'posts/search', to: 'posts#search', as: 'search'
end
