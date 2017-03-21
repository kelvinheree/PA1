Rails.application.routes.draw do

  get '/search', to: 'ucourses#index'
  get  '/home',   to: 'users#index'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  get '/', to:'users#index'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/courses', to: 'ucourses#new'
  get '/instructors', to: 'instructors#new'
  get '/subjects', to: 'subjects#new'


  resources :users,:ucourses,:instructors, :subjects


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
