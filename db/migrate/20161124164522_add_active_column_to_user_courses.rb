class AddActiveColumnToUserCourses < ActiveRecord::Migration
  def change
    change_table :user_courses do |t|
      t.integer :active_course
    end
  end
end
