Rails.application.routes.draw do
  resources :pins
  devise_for :users
  # to zakomentarzowalem 21.06.2018 str. 31 ksiazki
  # get 'home/index'

  root 'home#index'
	get 'home/about'
end
