class CreateEstudianteRespondes < ActiveRecord::Migration
  def change
    create_table :estudiante_respondes do |t|
      t.references :user
      t.references :pregunta
      t.integer :respuesta
      t.timestamps
    end
  end
end
