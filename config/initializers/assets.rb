# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

%w( files attachments courses estudianterespondes evaluacionestudiantes evaluacions files modulos preguntas respuestas usercourses users).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.css"]
end
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
%w( files attachments courses estudianterespondes evaluacionestudiantes evaluacions files modulos preguntas respuestas usercourses users).each do |controller|
  Rails.application.config.assets.precompile += ["admins/#{controller}.js", "admins/#{controller}.css"]
end
