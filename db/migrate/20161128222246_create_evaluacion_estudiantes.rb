class CreateEvaluacionEstudiantes < ActiveRecord::Migration
  def change
    create_table :evaluacion_estudiantes do |t|
      t.references :user
      t.references :evaluacion
      t.decimal :nota
      t.timestamps
    end
  end
end
