class CreateFests < ActiveRecord::Migration
  def change
    create_table :fests do |t|
    	t.string :name
    	t.text :description
    	t.date :start_date
    	t.date :end_date
      t.timestamps null: false
    end
  end
end