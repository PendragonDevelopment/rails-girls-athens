class CreateEventCoaches < ActiveRecord::Migration
  def change
    create_table :event_coaches do |t|
      t.integer :event_id
      t.integer :coach_id

      t.timestamps null: false
    end
  end
end
