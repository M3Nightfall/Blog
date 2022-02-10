Rails.application.routes.draw do
  devise_for :users
  get 'logout', to: 'sessions#destroy', as: 'logout'
  #resources :users
  root 'posts#index'



  resources :posts do
    resources :comments
  end



  # Failed custom url attempts:
  #
  #get 'The first post', :to => 'posts#1', :as => :posts
  #direct :get_posts_1 do
  #  "https://TheFirstPost.com"
  #end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
