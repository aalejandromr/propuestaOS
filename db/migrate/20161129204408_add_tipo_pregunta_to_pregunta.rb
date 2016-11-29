class AddTipoPreguntaToPregunta < ActiveRecord::Migration
  def self.up
    change_table :pregunta do |t|
      t.integer :tipo
    end
  end
end
