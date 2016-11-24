class UserCourses < ActiveRecord::Base
  belongs_to :modulo
  belongs_to :user
end
