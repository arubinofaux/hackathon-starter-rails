HackathonStarterRails::Application.routes.draw do
  resources :events

  resources :jobs

  devise_for :users, :controllers => {
    :registrations => "users/registrations",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }


  root 'home#index'

  get '/usuario/:id' => 'usuario#profile', as: :user_profile
  get '/usuario/public/:id' =>'usuario#pubprofile', as: :user_pubprofile
  get '/usuarios/list/map' => 'usuario#map', as: :user_maps


  get '/dashboard' => 'usuario#dashboard', as: :user_dashboard

  get '/dev' => 'home#dev', as: :dev
  get '/contratos' => 'jobs#list', as: :jobs_list
  get '/contratos/map' => 'jobs#map', as: :jobs_maps
  get '/eventos/map' => 'events#map', as: :events_maps
    
end
