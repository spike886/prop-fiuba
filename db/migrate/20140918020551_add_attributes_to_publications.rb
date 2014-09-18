class AddAttributesToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :price, :integer
    add_column :publications, :currency, :string

    add_column :properties, :address, :string
    add_column :properties, :longitude, :decimal, {precision: 10, scale: 6}
    add_column :properties, :latitude, :decimal, {precision: 10, scale: 6}
  end
end
