class UsersController < ApplicationController

  def index
    @users = User.all
    @courses = Course.all
    @modulos = Modulo.all
  end

  def show
    @users = User.all
    @courses = Course.all
    @modulos = Modulo.all
  end

  def profile
    @information = User.find_by_id(params[:user_id])
  end
end