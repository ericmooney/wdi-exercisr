WdiExercisr::Application.routes.draw do
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  get 'exercises/chart/:activity' => 'exercises#chart', :as => "chart"

  root :to => 'users#home'

  resources :user_sessions

  resources :users do
    resources :exercises
  end


end
