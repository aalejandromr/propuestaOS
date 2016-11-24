class UsercoursesController < ApplicationController

  def show

    @usercourses = UserCourses.select('course_id').where(user_id: params[:id], active_course: 1)
    if @usercourses.empty?
      redirect_to nocourses_path
    else
        @usercourses.each do |c|
        @id = "#{c.course_id} #{@id}"
    end
        @ids = @id.split
        @courses = Modulo.find(@ids)
    end
  end


end
