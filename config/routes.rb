Rails.application.routes.draw do
  root 'gifticon#index'
  
  get 'gifticon/index'
  get 'gifticon/new'
  get 'gifticon/creat'
  get 'gifticon/show'
  get 'gifticon/updata'
  get 'gifticon/destroy'
  get 'gifticon/edit'
  get 'gifticon/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
