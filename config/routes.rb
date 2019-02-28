Rails.application.routes.draw do
  resources :physicians, only: [:index]
  resources :patients
end
