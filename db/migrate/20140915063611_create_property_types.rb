class CreatePropertyTypes < ActiveRecord::Migration
  def change
    create_table :property_types do |t|
      t.string :name

      t.timestamps
    end

    CreatePropertyTypesService.new.call

    remove_column :properties, :type_of_building, :string
    add_column :properties, :property_type_id, :integer
    add_index :properties, :property_type_id
  end
end
