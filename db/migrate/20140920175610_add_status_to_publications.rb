class AddStatusToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :status, :string, default: ''
  end
end
