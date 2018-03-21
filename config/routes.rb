Rails.application.routes.draw do
  get 'what_see/index'

  devise_for :users , controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}  
  
  get 'posts/index'

  get 'posts/show'

  get 'contacts/index'

  get 'about/index'

  get 'home/index'

  get 'account/index'
  
  root "home#index"

  resources :posts do
    resources :comments
  end


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
