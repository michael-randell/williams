Rails.application.routes.draw do
  root 'application#root'

  resources :contacts, only: [:create]

end
