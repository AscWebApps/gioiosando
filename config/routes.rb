Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'

  get 'posts/show'

  get 'contacts/index'

  get 'about/index'

  get 'home/index'
  
  root "home#index"

  resources :posts do
    resources :comments
  end


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
