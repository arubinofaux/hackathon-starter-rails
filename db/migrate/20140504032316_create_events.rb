class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :organizer
      t.string :title
      t.string :type
      t.string :date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
