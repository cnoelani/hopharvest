Rails.application.routes.draw do
  devise_for :admins
  resources :comments
  
  

  devise_for :users
  resources :submissions do
    member do
      put "like", to: "submissions#upvote"
      put "dislike", to: "submissions#downvote"
    end
    resources :comments
  end
  
  root 'pages#main'
  get  '/about', to: 'pages#about'
end