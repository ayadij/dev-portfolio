Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#routes how is this possible?
# resouces is a special word. it encapsulates popular routes applications use
# contains all routes of :index create new show update destroy (CRUD funcitonality)
# rake routes
