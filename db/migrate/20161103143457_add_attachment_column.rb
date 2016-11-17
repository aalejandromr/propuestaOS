class AddAttachmentColumn < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
      t.integer :order
    end
  end
end
