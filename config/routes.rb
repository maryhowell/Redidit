Rails.application.routes.draw do
  devise_for :users
  # devise_for :users

  root                'static_pages#home'

  resources :boards


    resources :posts do
      member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
      end
    end


end
