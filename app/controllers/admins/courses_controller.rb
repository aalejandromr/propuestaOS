class Admins::CoursesController < ApplicationController
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

  def new
    @course = Course.new
    @modulo_id = Course.find(params[:modulo_id])
  end

  def create
    @course = Course.new(course_params)
    if @course.save
        redirect_to admins_user_path(:id => current_user.id)
    else
      render 'new'
    end
  end

  private
  def course_params
   params.require(:course).permit(:nombre, :descripcion, :modulo_id)
  end
end