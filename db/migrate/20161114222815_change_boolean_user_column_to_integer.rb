class ChangeBooleanUserColumnToInteger < ActiveRecord::Migration
  def self.up
    change_column :users, :rol, :integer
  end
end
