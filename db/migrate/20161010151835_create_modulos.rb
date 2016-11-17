class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :nombre
      t.string :descripcion
      t.timestamps
    end
  end
end
