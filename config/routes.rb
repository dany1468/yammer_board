Rails.application.routes.draw do
  get 'boards/index'

  get '/auth/:provider/callback', to: 'sessions#create'
  resource :session, only: [:destroy]
end
