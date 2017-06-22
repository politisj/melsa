Rails.application.routes.draw do

  resources :posts
  resources :users

  root to: "session#new"


  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)


end
