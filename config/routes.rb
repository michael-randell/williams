Rails.application.routes.draw do
  root 'application#root'

  get '/gallery', to: 'application#gallery'

  resources :contacts, only: [:create]

end
