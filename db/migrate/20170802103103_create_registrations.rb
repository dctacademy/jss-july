class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :college
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
