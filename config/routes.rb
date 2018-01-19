Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
