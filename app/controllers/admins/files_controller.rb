class Admins::FilesController < ApplicationController

  def update_file_order
    #Params to know fields of the which one selected  
    @order = params[:order].to_i #knowing the order of the file dragabbled
    @current_attachment = Attachment.find(params[:attachment_id]) #Knowing the current attachment modificating
    @current_order = @current_attachment.order #The current order of which attachment we are modificating
    if @order != @current_order
    @i = @order
    
            if @current_order > @order 
               @course_attachments = Attachment.where(course_id: params[:course]).order(:order)
               @course_attachments.each do |t|
                    if @current_order > t.order and t.order >= @order
                        @current_attachment_order = t.order + 1
                        t.update(:order => @current_attachment_order)
                    end 
                 end
            @current_attachment.update(:order => @order)
             #@course_attachments = Attachment.where(course_id: params[:course]).where(order: @i..Float::INFINITY).order(:order)
              # @course_attachments.each do |t|
               #     @current_attachment_order = t.order + 1
                #    t.update(:order => @current_attachment_order)
                 #end

            elsif @current_order < @order
                @course_attachments = Attachment.where(course_id: params[:course])
                @course_attachments.each do |t|
                    if t.order > @current_order and t.order <= @order and t.order != 1
                        @current_attachment_order = t.order - 1
                       t.update(:order => @current_attachment_order)
                    end
                end
                @current_attachment.update(:order => @order)
          else
                
          end
      end
  end

  def show
    path = File.join Rails.root, 'public', 'system', 'attachments', 'files', '000', '000', params[:id], 'original'
    file = File.open(File.join(path, params[:attachment_file]), 'rb')
    @letras = file.read
    @words = @letras.scan(/[a-zA-Z]+/)
    @words = @letras.split('.')
    @contents = Hash.new(0)
    @words.each do |word|
        @contents[word] = 1
    end
    #@contents = @letras.rpartition(".")
    #@contents = @letras.scan(/......................................../)
    #@contents = @letras.split(//,199)
    @contents.delete("\n")
    file.close
    return @course = Course.where(id: params[:course_attachment_id])
  end

  
end