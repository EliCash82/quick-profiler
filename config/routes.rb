Rails.application.routes.draw do
  root 'blogs#index'
  devise_for :users
  resources :users do
    resources :blogs
  end
  get 'static_pages/index'
  get 'static_pages/contact'
  get 'static_pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
