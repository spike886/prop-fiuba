class AddPublicationTypeIdToPublication < ActiveRecord::Migration
  def change
    remove_column :publications, :publication_type, :string
    add_column :publications, :publication_type_id, :integer
    add_index :publications, :publication_type_id
  end
end
