class Course < ActiveRecord::Base
  belongs_to :modulo
  has_many :evaluacions
  
end
