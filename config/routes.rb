Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :boxes
  resources :users do 
  	resources :subscriptions, only: [:new, :show, :edit, :update, :destroy]
  end

  root 'welcome#index'

  resources :subscriptions


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
