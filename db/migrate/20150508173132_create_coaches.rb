class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
