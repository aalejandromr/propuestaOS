class Admins::EvaluacionsController < ApplicationController
  
  def new
    @pregunta = Pregunta.new    
  end


  def create_evaluacion
    #@evaluacion = Evaluacion.create(course_id: params[:data[0]], descripcion: params[:descripcion]);
    @form = params[:form]
    
    @form.each do |e|
      if e[1]['name'] == 'descripcion' and e[1]['value'] != ""
        @evaluacion = Evaluacion.create(course_id: params[:course_id], descripcion: e[1]['value'])
      elsif e[1]['name'] == 'pregunta_rb' and e[1]['value'] != ""
        @pregunta = Pregunta.create(evaluacion_id: @evaluacion.id.to_i, pregunta: e[1]['value'], tipo: 1)
      elsif e[1]['name'] == 'pregunta_checkbox' and e[1]['value'] != ""
        @pregunta = Pregunta.create(evaluacion_id: @evaluacion.id.to_i, pregunta: e[1]['value'], tipo: 3)
      elsif e[1]['name'] == 'selector' and e[1]['value'] != ""
        @rfcorrecta = 1
      elsif e[1]['name'] == 'radio_respuesta' and e[1]['value'] != ""
        if @rfcorrecta == 1
          Respuesta.create(pregunta_id: @pregunta.id.to_i, respuesta: e[1]['value'], correcta: true)
          @rfcorrecta = 0
        else
          Respuesta.create(pregunta_id: @pregunta.id.to_i, respuesta: e[1]['value'], correcta: false)
        end
      elsif e[1]['name'] == 'checkbox_respuesta' and e[1]['value'] != ""
        if @rfcorrecta == 1
          Respuesta.create(pregunta_id: @pregunta.id.to_i, respuesta: e[1]['value'], correcta: true)
          @rfcorrecta = 0
        else
          Respuesta.create(pregunta_id: @pregunta.id.to_i, respuesta: e[1]['value'], correcta: false)
        end
    end

  end

  end

  def show
    @preguntas = Pregunta.where(:evaluacion_id => params[:id])
    @respuestas = Respuesta.all
  end

end