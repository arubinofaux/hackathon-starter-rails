class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :title
      t.string :company
      t.string :company_url
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
