class AttachmentsController < ApplicationController
  def new
    @attachment = Attachment.new
    @course_id = Course.find(params[:course_id])
  end

  def create
    @attachment = Attachment.new(attachment_params)
    if @attachment.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def attachment_params
   params.require(:attachment).permit(:file, :course_id)
  end
end