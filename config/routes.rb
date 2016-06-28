Rails.application.routes.draw do
  devise_for :users
  # devise_for :users

  root                'static_pages#home'

  resources :boards


    resources :posts do
      member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
        get "vote_count", to: "post#vote_count"
      end
    end


end
