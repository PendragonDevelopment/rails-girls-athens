class AddAttributesToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :description, :text
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
    add_column :events, :deadline, :datetime
    add_column :events, :event_type, :integer
  end
end
