class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :call
      t.integer :channel
      t.string :name
      t.string :description
      t.text :note
      t.integer :priority
      t.string :address
      t.string :phone
      t.string :web
      t.float :latitude
      t.float :longitude
      t.integer :group_id
      t.integer :affiliate_id
      t.integer :market_id

      t.timestamps
    end
    add_index :stations, :latitude
    add_index :stations, :longitude
    add_index :stations, :market_id
    add_index :stations, :affiliate_id
    add_index :stations, :group_id

  end
end
