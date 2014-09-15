class CreateCharacteristicsPropertyTypes < ActiveRecord::Migration
  def change
    CreateCharacteristicsService.new.call
    create_table :characteristics_property_types, id: false do |t|
      t.references :characteristic
      t.references :property_type
      t.string :values
      t.integer :order, default: 1
      t.boolean :obligatory, default: false
    end
    add_index :characteristics_property_types, [:characteristic_id, :property_type_id], unique: true, name: "index"
    add_index :characteristics_property_types, :property_type_id
  end
end
