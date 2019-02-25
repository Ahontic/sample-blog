Rails.application.routes.draw do
  
  get '/' => 'home#index'

  resources :articles
  resource :contacts, only: [:new,:create], path_names: { :new => ''}
  resources :terms
  resources :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
