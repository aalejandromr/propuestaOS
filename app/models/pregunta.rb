class Pregunta < ActiveRecord::Base
  belongs_to :evaluacion
  has_many :respuestas
end
