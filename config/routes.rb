Rails.application.routes.draw do
  get 'contacts/index'
  get '/' => 'home#index'
  resources :articles
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
