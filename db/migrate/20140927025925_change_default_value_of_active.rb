class ChangeDefaultValueOfActive < ActiveRecord::Migration
  def change
    change_column :publications, :active, :boolean, default: true
  end
end
