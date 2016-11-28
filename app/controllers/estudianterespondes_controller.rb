class EstudianterespondesController < ApplicationController
  
  def new
    @estudianteresponde = EstudianteResponde.new
    @preguntas = Pregunta.where(evaluacion_id: params[:evaluacion_id]).count
    
    #params[:respuestas].each do |r|
     # EstudianteResponde.create(user_id: params[:user_id],pregunta_id: params[:pregunta_id],respuesta: r)
    #end
  end
  
end
