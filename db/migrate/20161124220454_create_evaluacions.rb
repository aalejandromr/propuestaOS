class CreateEvaluacions < ActiveRecord::Migration
  def change
    create_table :evaluacions do |t|
      t.references :course
      t.string :descripcion
      t.timestamps
    end
  end
end
