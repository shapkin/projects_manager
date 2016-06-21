Rails.application.routes.draw do

  devise_for :users

  resources :projects, only: [:index, :create, :update, :destroy] do
    resources :issues
  end

  root 'landing#index'

end
