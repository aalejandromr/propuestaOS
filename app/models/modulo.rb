class Modulo < ActiveRecord::Base
  has_many :courses
  has_many :user_courses
end
