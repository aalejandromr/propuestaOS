class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :nombre
      t.string :descripcion
      t.references :modulo
      t.timestamps
    end
  end
end
