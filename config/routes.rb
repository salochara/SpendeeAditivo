Rails.application.routes.draw do
  devise_for :users

  get '/verify' , to: 'verify#index'

  
end
