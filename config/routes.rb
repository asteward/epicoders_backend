Rails.application.routes.draw do
  devise_for :users, :only => :sessions
  devise_for :users, :only => :users
  root to: "students#index"

  resources :students, :except => [:edit, :update]
end
