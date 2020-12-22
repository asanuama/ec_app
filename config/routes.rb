Rails.application.routes.draw do
  
  devise_for :customers ,controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'
  }

  devise_for :admins  ,controllers: {
    sessions: 'admins/sessions'
  }
  
  root 'homes#top'
  get 'homes/about'
  get 'customers/resign' => 'customers#resign'
  patch 'customers/resign' => 'customers#resign_update'
  resources :products, only: [:index, :show]
  resources :customers, only: [:show, :edit, :update] do
    resources :addresses, only: [:create, :index, :edit, :update, :destory]
  end
  resources :order_products
  resources :cart_products, only:[:create, :index, :update, :destroy]
  resources :orders do
    collection do
      post :confirm
    end
  end
  
  namespace :admins do
    resources :products, only: [:index,:new,:create,:show,:edit,:update]
    resources :genres, only: [:index,:edit,:create,:update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
