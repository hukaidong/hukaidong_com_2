Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/home', to: 'pages#home'
  get 'pages/navigations', to: 'pages#navigations'
  get 'pages/modal-clear', to: 'pages#modal_clear'
  get 'pages/accounting-widget', to: 'pages#accounting_widget'
  scope '/accounts' do
    devise_for :users, controllers: { 
      sessions: "account/sessions",
      registrations: "account/registrations",
      passwords: "account/passwords",
    }
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
