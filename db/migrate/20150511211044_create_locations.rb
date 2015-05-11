class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :name
      t.text :description
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
