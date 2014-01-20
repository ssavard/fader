class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.integer :rank
      t.string :name
      t.string :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :markets, :rank, unique: true
    add_index :markets, :latitude
    add_index :markets, :longitude
  end
end
