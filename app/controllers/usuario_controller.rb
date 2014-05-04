class UsuarioController < ApplicationController
  layout "user_backend"
  
  def dashboard
  end

  def profile
    @user = User.find(params['id'])
  end
  
  def pubprofile
    @user = User.find(params['id'])
    @close_users = User.near([@user.latitude, @user.longitude], 20)
    @close_events = Event.near([@user.latitude, @user.longitude], 50)
    @close_jobs = Job.near([@user.latitude, @user.longitude], 50)
    @user = User.find(params['id'])
  end

  def map
  	@on_board = User.all
    @users_count = User.count
  	@users = User.find(:all, :order => "id desc", :limit => 25)
  end
end
