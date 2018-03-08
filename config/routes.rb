Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  resources :products do
    resources :comments
  end
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users

  root 'simple_pages#landing_page'

  get 'simple_pages/about'
  get 'simple_pages/contact'

   post 'simple_pages/thank_you'

 post 'payments/create'
end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
