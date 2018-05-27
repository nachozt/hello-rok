Rails.application.routes.draw do
  resources :titles
  root 'titles#index'
end
