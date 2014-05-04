class UsuarioController < ApplicationController
  layout "user_backend"
  
  def dashboard
  end

  def profile
    @user = User.find(params['id'])

  end
end
