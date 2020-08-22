Rails.application.routes.draw do
  get '/affirmation', to: 'affirmation#daily'
  get '/affirmation/index', to: 'affirmation#index'
  post '/affirmation/create', to: 'affirmation#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
