class ModulosController < ApplicationController

  def show
    @modulo = Modulo.all
  end

  

end