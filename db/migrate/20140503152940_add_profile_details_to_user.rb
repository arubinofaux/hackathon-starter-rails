class AddProfileDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :github_username, :string
  end
end
