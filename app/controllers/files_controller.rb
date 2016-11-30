class FilesController < ApplicationController
  def show
    path = File.join Rails.root, 'public', 'system', 'attachments', 'files', '000', '000', params[:file_id], 'original'
    file = File.open(File.join(path, params[:attachment_file]), 'rb')
    @letras = file.read
    #@files = file.read
    #@letras = yomu.read :text, @files
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