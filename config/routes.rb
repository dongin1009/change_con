Rails.application.routes.draw do
  get 'welcome/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'gifticon#index'
  resources :gifticon
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
