class EvaluacionEstudiante < ActiveRecord::Base
  belongs_to :user
  belongs_to :evaluacion
end
