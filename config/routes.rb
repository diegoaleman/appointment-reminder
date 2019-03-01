Rails.application.routes.draw do
  get '/', to:'homepage#home', as: 'root'
  resources :physicians, only: [:index]
  resources :patients
  resources :appointments
end
