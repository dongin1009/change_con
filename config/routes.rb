Rails.application.routes.draw do
  
  ## 루트 페이지
  root 'gifticon#index'

  ## Admin Page
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  ## Devise 사용자 회원가입, 로그인
  devise_for :users

  ## gifticon 경로
  resources :gifticon
end