Rails.application.routes.draw do
  # devise_for :customers
  # devise_for :admins

  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/password',
    registrations: 'customers/registrations'
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/password',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    resources :items
    resources :genres, only: [:index, :create, :edit, :update]
  end



  namespace :customers do
    resources :items
  end

end
