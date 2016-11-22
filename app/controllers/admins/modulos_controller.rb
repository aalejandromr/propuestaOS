class Admins::ModulosController < ApplicationController

  def new
    @modulo = Modulo.new
  end

  def create
    @modulo = Modulo.new(modulo_params)
    if @modulo.save
        redirect_to admins_user_path(:id => current_user.id)
    else
      render 'new'
    end
  end


  private
  def modulo_params
   params.require(:modulo).permit(:nombre, :descripcion)
  end
end