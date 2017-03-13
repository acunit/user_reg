Rails.application.routes.draw do
  root 'users#index'
  post '/create' => 'users#create'
  get '/login' => 'users#login'
  get '/to_info' => 'users#to_info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
