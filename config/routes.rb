Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'public/site#index'
  get 'dashboard' => 'dashboard#index'

  get 'forbidden' => 'public/site#forbidden'
end
