class UsuarioController < ApplicationController
  def dashboard
  end

  def profile
    @user = User.find(params['id'])
  end
end
