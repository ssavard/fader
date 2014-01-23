class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :web
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :groups, :name, unique: true
    add_index :groups, :latitude
    add_index :groups, :longitude
  end
end
