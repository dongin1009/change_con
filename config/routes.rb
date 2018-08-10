Rails.application.routes.draw do
  
  ## 루트 페이지
  root 'gifticon#index'

  ## Admin Page
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  ## Devise 사용자 회원가입, 로그인
  devise_for :users

  ## gifticon 경로
  resources :gifticon

  
<<<<<<< HEAD
  get 'gifticon/index'
  get 'gifticon/new'
  get 'gifticon/creat'
  get 'gifticon/show'
  get 'gifticon/updata'
  get 'gifticon/destroy'
  get 'gifticon/edit'
  get 'gifticon/login'
  get 'gifticon/instruction'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
>>>>>>> 159f45e4b0180c3640eecaf9e8d554a9749a41d0
end
