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



  ## gifticon 경로
  resources :gifticon


  get    '/posts/:id'      => 'posts#show'
<<<<<<< Updated upstream
  get    'posts/:id' => 'posts#edit'
=======
  

>>>>>>> Stashed changes
end

