Rails.application.routes.draw do
  root 'application#root'

  resources :contacts, only: [:create]

  get '/services', to: 'application#services'

end
