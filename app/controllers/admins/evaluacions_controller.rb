class Admins::EvaluacionsController < ApplicationController
  
  def create_evaluacion
    #@evaluacion = Evaluacion.create(course_id: params[:data[0]], descripcion: params[:descripcion]);
    @prueba = params[:data]
    @prueba2
    @prueba.each do |r|
      @prueba2 = r.name
    end

  end

  def show
    @preguntas = Pregunta.where(:evaluacion_id => params[:id])
    @respuestas = Respuesta.all
  end

  private

  def evaluacion_params
   params.require(:evaluacion).permit(:correctas_radio, :descripcion, :radio, :text)
  end

  
end