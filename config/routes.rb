Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#routes how is this possible?
# resouces is a special word. it encapsulates popular routes applications use
# contains all routes of :index create new show update destroy (CRUD funcitonality)
# rake routes
