class EstudianterespondesController < ApplicationController
  
  def new
    @estudianteresponde = EstudianteResponde.new
    @cpreguntas = Pregunta.where(evaluacion_id: params[:evaluacion_id]).count
    @preguntas = Pregunta.where(evaluacion: params[:evaluacion_id]).select("id")
    @respuestasCorrectas = Respuesta.where(correcta: true, pregunta_id: @preguntas).select("id")
    @correctas = 0
    @respuestas = params[:respuestas]
    @respuestasCorrectas.each do |rc|
     @respuestas.each do |r|
        if rc.id==r.to_i
         @correctas = @correctas + 1
        end
      end
    end
    @evaluacionestudiante = EvaluacionEstudiante.where(user_id: params[:user_id], evaluacion_id: params[:evaluacion_id])
    @nota = @correctas.to_d/@cpreguntas*10
    @evaluacionestudiante.update(@evaluacionestudiante.ids[0],nota: @nota)
    #@evaluacionestudiante.ids
    #params[:respuestas].each do |r|
     # EstudianteResponde.create(user_id: params[:user_id],pregunta_id: params[:pregunta_id],respuesta: r)
    #end
    #@correctas.to_d/@cpreguntas*10
  end
  
end
