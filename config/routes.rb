WdiExercisr::Application.routes.draw do
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  root :to => 'users#index'

  resources :user_sessions

  resources :users do
    resources :exercises
  end


end
