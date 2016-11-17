class FixUserColumnName < ActiveRecord::Migration
  def self.up
    rename_column :users, :admin, :rol
  end
end
