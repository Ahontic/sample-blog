Rails.application.routes.draw do
  
  devise_for :users
  root to: "home#index"
  get '/' => 'home#index'

  
  resource :contacts, only: [:new,:create], path_names: { :new => ''}
  resources :terms, only: [:index]
  # get 'terms' => 'pages#terms' one controller pages and static page terms
  resources :about, only: [:index]
  # get 'about' => 'pages#about' one controller pages and static page about

resources :articles do
  resources :comments
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
