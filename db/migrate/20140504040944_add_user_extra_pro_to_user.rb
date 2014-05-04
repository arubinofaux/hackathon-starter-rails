class AddUserExtraProToUser < ActiveRecord::Migration
  def change
    add_column :users, :public_repos, :string
    add_column :users, :public_gists, :string
    add_column :users, :followers, :string
    add_column :users, :following, :string
    add_column :users, :company, :string
    add_column :users, :bio, :text
  end
end
