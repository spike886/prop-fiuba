class CreatePublicationTypes < ActiveRecord::Migration
  def change
    create_table :publication_types do |t|
      t.string :name
      t.integer :publication_days
      t.integer :images_count
      t.integer :videos_count
      t.decimal :cost
      t.boolean :priority_on_search
      t.boolean :highlight

      t.timestamps
    end
     CreatePublicationTypesService.new.call
  end
end
