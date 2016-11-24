class CreateRespuesta < ActiveRecord::Migration
  def change
    create_table :respuesta do |t|
      t.references :pregunta
      t.string :respuesta
      t.boolean :correcta, default: false
      t.timestamps
    end
  end
end
