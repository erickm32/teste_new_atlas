Rails.application.routes.draw do
  namespace :obeduc do
    resources :colors
  end
  namespace :obeduc do
    resources :texts
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'public/site#index'
  get 'dashboard' => 'dashboard#index'

  get 'forbidden' => 'public/site#forbidden'
end
