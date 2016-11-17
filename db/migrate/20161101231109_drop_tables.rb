class DropTables < ActiveRecord::Migration
  def down
    drop_table :orders
  end
end
