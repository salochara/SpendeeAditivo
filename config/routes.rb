Rails.application.routes.draw do
  get 'expenses/new'
  get 'expenses/create'
  get 'expenses/show'
  devise_for :users

  resources :days, only: [:new, :create, :index, :show] do
    resources :expenses, only: [:new, :create, :show, :index]
  end

  get '/verify' , to: 'verify#index'


end
