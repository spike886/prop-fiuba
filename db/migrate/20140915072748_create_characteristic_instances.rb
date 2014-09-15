class CreateCharacteristicInstances < ActiveRecord::Migration
  def change
    create_table :characteristic_instances do |t|
      t.references :characteristic, index: true
      t.string :type
      t.references :property, index: true
      t.string :string
      t.decimal :integer
      t.boolean :boolean
      t.string :values

      t.timestamps
    end
  end
end
