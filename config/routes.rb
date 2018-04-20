Rails.application.routes.draw do
  
  get 'topics/new'

  resources :instructors
  resources :topics

  get '/help',  to: 'static_pages#help'
  get '/about',  to: 'static_pages#about'
  get  '/contact',  to: 'static_pages#contact'
  get  '/signup',  to: 'instructors#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/new_topic', to: 'topics#new'
  # post '/new_topic', to: 'topics#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
