Rails.application.routes.draw do
  

  root :to => "pages#home"
  resources :children
  resources :wives
  resources :wives 
  resources :bazes
  resources :bases
  resources :sections
  resources :trades
  resources :ranks
  resources :people
  
  get 'pages/about'
  resources :lrcs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
