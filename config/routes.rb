Rails.application.routes.draw do
  devise_for :users
  # devise_for :users

  root                'static_pages#home'

  resources :boards
  resources :posts, except: [:edit, :update] do
  resources :posts, shallow: true

  end

end
