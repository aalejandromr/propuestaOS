class Admins::EvaluacionsController < ApplicationController
  
  def new
    
  end

  private
  def course_params
   params.require(:course).permit(:nombre, :descripcion, :modulo_id)
  end
end