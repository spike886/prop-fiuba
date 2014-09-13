class AddOperationTypeToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :operation_type, :string
  end
end
