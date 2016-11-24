class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def info_courses
    @info_courses = Course.where(modulo_id: params[:modulo_id]).take(100)
  end

  def specific_course
    @specific_course = Course.where(id: params[:course_id])
    @attachments = Attachment.where(course_id: params[:course_id]).order(:order)
    @evaluaciones = Evaluacion.where(course_id: params[:course_id])
    #@attachments = Attachment.joins(:course).where(attachments: { course_id: params[:course_id]})
  end

  def nocourses
    
  end
  
end
