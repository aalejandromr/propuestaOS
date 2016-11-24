class EvaluacionsController < ApplicationController

  def show
    @preguntas = Pregunta.where(:evaluacion_id => params[:evaluacion_id])
    @respuestas = Respuesta.all
  end

end