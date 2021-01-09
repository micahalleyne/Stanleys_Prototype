Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :videos
  resources :songs
  resources :blogs do
    resources :comments
  end
  root "blogs#index"
  get 'terms', :to => 'terms#terms_services'
end
