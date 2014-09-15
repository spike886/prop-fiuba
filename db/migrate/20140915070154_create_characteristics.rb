class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.string :name
      t.string :characteristic_type

      t.timestamps
    end
  end
end
