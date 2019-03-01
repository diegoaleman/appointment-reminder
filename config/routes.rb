Rails.application.routes.draw do
  get '/', to:'homepage#home', as: 'root'
  resources :physicians, only: [:index]
  resources :patients
  resources :appointments do
    post 'send_reminder/:option',
      to: 'appointments#send_reminder',
      as: 'send_reminder'
  end
end
