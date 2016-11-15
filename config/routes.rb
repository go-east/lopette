Rails.application.routes.draw do

  devise_for :users


  resources :promoters do
    resources :referrees, only: [:new, :create, :show, :new]
    end

  root to: 'pages#home'
end

