Rails.application.routes.draw do

  resources :products

  get 'simple_pages/about'

  get 'simple_pages/contact'

 root 'simple_pages#landing_page'

  resources :orders, only: [:index, :show, :create, :destroy]

  get '/products/:id', to: 'products#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
