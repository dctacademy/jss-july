class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :entry_fee
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :no_participants
      t.string :location
      t.integer :fest_id

      t.timestamps null: false
    end
  end
end
