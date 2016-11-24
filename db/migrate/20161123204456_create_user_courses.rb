class CreateUserCourses < ActiveRecord::Migration
  def change
    create_table :user_courses do |t|
      t.references :course
      t.references :user
      t.timestamps
    end
  end
end
