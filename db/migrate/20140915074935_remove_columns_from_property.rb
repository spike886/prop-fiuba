class RemoveColumnsFromProperty < ActiveRecord::Migration
  def change
    remove_column :properties, :address, :string
    remove_column :properties, :age, :integer
    remove_column :properties, :rooms, :integer
    remove_column :properties, :bathrooms, :integer
    remove_column :properties, :bedrooms, :integer
    remove_column :properties, :covered_area, :integer
    remove_column :properties, :total_area, :integer
  end
end
