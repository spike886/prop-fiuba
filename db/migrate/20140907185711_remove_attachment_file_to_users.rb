class RemoveAttachmentFileToUsers < ActiveRecord::Migration
  def self.down
    change_table :users do |t|
      t.attachment :file
    end
  end

  def self.up
    remove_attachment :users, :file
  end
end
