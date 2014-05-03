HackathonStarterRails::Application.routes.draw do
  resources :jobs

  devise_for :users, :controllers => {
    :registrations => "users/registrations",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }


  root 'home#index'

  get '/usuario/:id' => 'usuario#profile', as: :user_profile
  get '/dashboard' => 'usuario#dashboard', as: :user_dashboard

end
