class CreateEventLocations < ActiveRecord::Migration
  def change
    create_table :event_locations do |t|
      t.references :event, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
