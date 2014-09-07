class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :publication_type
      t.date :start_date
      t.date :end_date
      t.boolean :active
      t.references :property, index: true

      t.timestamps
    end
  end
end
