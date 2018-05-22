Rails.application.routes.draw do

  namespace :admin do
   root  to: 'dashboard#index'
   resources :structures
  end
  
  namespace :api do
    namespace :v1 do
      resources :structures
      resources :posts
    end
  end


  resources :structures
  devise_for :users , controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}  
  
  get 'posts/index'

  get 'posts/show'

  get 'contacts/index'

  get 'about/index'

  get 'home/index'

  get 'account/index'

  get 'what_see/index'
  
  root "home#index"

  resources :posts do
    resources :comments
  end


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
