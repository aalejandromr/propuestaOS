class Admins::EvaluacionsController < ApplicationController
  
  def new

  end

  def show
    @preguntas = Pregunta.where(:evaluacion_id => params[:id])
    @respuestas = Respuesta.all
  end

  private

  def evaluacion_params
   params.require(:course).permit(:nombre, :descripcion, :modulo_id)
  end

  
end