Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  resources :contracts

  root to: 'welcome#index'
end
