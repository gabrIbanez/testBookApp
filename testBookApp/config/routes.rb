Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :all_books, only: :index
  resources :books, only: :edit

  resources :authors do 
  	resources :books
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
