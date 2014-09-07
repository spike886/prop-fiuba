class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.references :location, index: true
      t.references :user, index: true
      t.integer :age
      t.integer :rooms
      t.integer :bathrooms
      t.integer :bedrooms
      t.string :type_of_building
      t.integer :covered_area
      t.integer :total_area

      t.timestamps
    end
    add_column :images, :property_id, :integer
    add_index :images, :property_id
  end
end
