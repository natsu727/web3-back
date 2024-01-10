Rails.application.routes.draw do
  get 'home', to: 'home#index'
  resources :tokens, only: [:index, :new, :create] do
    collection do
      get :transfer, to: 'tokens#new'
      post :transfer
    end
  end
  resources :wallets, only: [:index, :create]

  resources :regist_items, only: [:index, :new, :create] do
    collection do
      get 'regist',to: 'regist_items#check_registed'
      post 'regist',to: 'regist_items#regist_items'
    end
  end
  root "home#index"
end
