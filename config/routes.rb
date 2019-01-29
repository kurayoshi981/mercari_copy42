Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  resources :users, only: [:new , :show, :edit, :update] do
    member do
      get 'signout'
    end
  end
  resources :credit_cards, only: [:new]
end
