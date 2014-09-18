class CreateCreateVideosTables < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.references :property, index: true

      t.timestamps
    end
  end
end
