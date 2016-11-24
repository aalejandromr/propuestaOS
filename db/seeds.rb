# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Modulo.create([{ nombre: 'Modulo 1', descripcion: 'Este es el modulo 1'}, {nombre: 'Modulo 2' , descripcion: 'Este es el modulo 2'}])
#Course.create(nombre: 'Curso Automotriz', descripcion: 'Este es el primer curso de automotriz', modulo_id: '1')
#Course.create(nombre: 'Curso Electrica', descripcion: 'Este es el primer curso de electrica', modulo_id: '2')
#Course.create(nombre: 'Curso Electrica 2', descripcion: 'Este es el segundo curso de electrica', modulo_id: '2')
#Attachment.create(course_id: 1, file_file_name: "ruta/prueba",file_content_type: "file_content_type")
#Order.create(attachment_id: 5, order: 1)
#Order.create(attachment_id: 9, order: 2)
#Order.create(attachment_id: 6, order: 1)
#Order.create(attachment_id: 7, order: 2)
#Order.create(attachment_id: 8, order: 3)
#Order.create(attachment_id: 10, order: 4)
#Order.create(attachment_id: 11, order: 5)
#Order.create(attachment_id: '1', order: 11)
#Attachment.update(5, :order => '1')
#Attachment.update(9, :order => '2')
#Attachment.update(6, :order => '1')
#Attachment.update(7, :order => '2')
#Attachment.update(8, :order => '3')
#Attachment.update(9, :order => '2')
#Attachment.update(10, :order => '4')
#Attachment.update(11, :order => '5')
UserCourses.create(course_id: 1, user_id: 2)