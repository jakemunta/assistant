Rails.application.routes.draw do
  resources :notes
  devise_for :users

  root to: 'notes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
