class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :twitter
      t.string :facebook
      t.string :linkedin

      t.timestamps null: false
    end
  end
end
