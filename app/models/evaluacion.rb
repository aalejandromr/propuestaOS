class Evaluacion < ActiveRecord::Base
  belongs_to :course
  has_many :preguntas
end
