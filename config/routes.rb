Rails.application.routes.draw do
  

  ## 루트 페이지
  root 'gifticon#index'

  ## Admin Page
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  

 devise_for :users
get '/homes/index'
resources :conversations, only: [:create] do
    member do
        post :close
    end
  resources :messages, only: [:create]
end

get '/gifticon/introduce'

  ## gifticon 경로
  resources :gifticon
  
put '/gifticon/:id/update' => 'gifticon#update'

  # get    '/posts/:id'      => 'posts#show'
  # get    'posts/:id' => 'posts#edit'
  
post 'gifticon/:id/edit' => 'gifticon#show'
end

