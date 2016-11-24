class CreatePregunta < ActiveRecord::Migration
  def change
    create_table :pregunta do |t|
      t.references :evaluacion
      t.string :pregunta
      t.timestamps
    end
  end
end
