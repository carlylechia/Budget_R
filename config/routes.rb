# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    delete '/users/sign_out' => 'devise/sessions#destroy', as: 'sign_out'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :groups, only: [:splash, :create, :new, :edit, :update, :destroy] do
    resources :entities
  end

  get '/splash' => 'groups#splash'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "groups#index"
end
