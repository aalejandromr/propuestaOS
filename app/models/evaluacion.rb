class Evaluacion < ActiveRecord::Base
  belongs_to :course
  has_many :preguntas
  has_many :evaluacion_estudiantes
end
