Rails.application.routes.draw do
  get 'home/index'
  get 'home' => 'home#index'
  get 'directory' => 'home#directory_listing'

  resources :users

  # get '/:anything_else' => 'home#find_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
