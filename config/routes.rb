Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  resources :contracts

  root to: 'welcome#index'
end
