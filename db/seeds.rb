require 'open-uri'

puts 'Creando avatar'
avatar = URI.open('https://images.unsplash.com/photo-1631203928493-a4e4eb2b8da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')

puts 'Creando Usuarios'
User.create(first_name: 'María', last_name: 'Henriquez', role: 'teacher', email: 'maria@email.com', password: '1234567').photo.attach(io: avatar, filename: 'avatar.png', content_type: 'image/png');
User.create(first_name: 'Mel', last_name: 'Valle', role: 'student', email: 'mel@email.com', password: '1234567')
User.create(first_name: 'Jhon', last_name: 'Figueroa', role: 'student', email: 'jh@email.com', password: '1234567')
User.create(first_name: 'Jean', last_name: 'Pier', role: 'student', email: 'jean_pier@email.com', password: '1234567')

puts 'Creando Lines'
Line.create(name: 'Linea principal')
Line.create(name: 'Idea de la investigación')
Line.create(name: 'Marco teorico')
Line.create(name: 'El problema')
Line.create(name: 'Marco metodologico')
Line.create(name: 'Resultados de la investigación')
Line.create(name: 'Diseño de la investigación')
Line.create(name: 'Finales')
Line.create(name: 'Defensa de tesis')
Line.create(name: 'Estación servicios adicionales')

puts 'Creando station'
station1 = Station.new(name: 'Bienvenida', line_id: 1)
station1.save
station2 = Station.new(name: 'Lineamientos generales', line_id: 1)
station2.save
station3 = Station.new(name: 'Pre work', line_id: 1)
station3.save
station4 = Station.new(name: 'Definición de variables', line_id: 2)
station4.save
station5 = Station.new(name: 'Viabilidad', line_id: 2)
station5.save
station6 = Station.new(name: 'Proyección de escenarios y medología', line_id: 2)
station6.save
station7 = Station.new(name: 'Concreción ante proyecto', line_id: 2)
station7.save
station8 = Station.new(name: 'Antecedentes', line_id: 3)
station8.save
station9 = Station.new(name: 'Bases teóricas', line_id: 3)
station9.save
station10 = Station.new(name: 'Operacionalización de la variable', line_id: 3)
station10.save
station11 = Station.new(name: 'Borrador de hipótesis', line_id: 3)
station11.save
station12 = Station.new(name: 'Planteamiento', line_id: 4)
station12.save
station13 = Station.new(name: 'Objetivos de la investigación', line_id: 4)
station13.save
station14 = Station.new(name: 'Sistemas de hipótesis', line_id: 4)
station14.save
station15 = Station.new(name: 'Justificación', line_id: 4)
station15.save
station16 = Station.new(name: 'Delimitación', line_id: 4)
station16.save
station17 = Station.new(name: 'Limitaciones', line_id: 4)
station17.save
station18 = Station.new(name: 'Enfoque cuantitativo', line_id: 5)
station18.save
station19 = Station.new(name: 'Enfoque cualitativo', line_id: 5)
station19.save
station20 = Station.new(name: 'Enfoque mixto', line_id: 5)
station20.save
station21 = Station.new(name: 'Analisis', line_id: 6)
station21.save
station22 = Station.new(name: 'Discusión', line_id: 6)
station22.save
station23 = Station.new(name: 'Introduccion', line_id: 7)
station23.save
station24 = Station.new(name: 'Justificación', line_id: 7)
station24.save
station25 = Station.new(name: 'Propuesta', line_id: 7)
station25.save
station26 = Station.new(name: 'Conclusiones', line_id: 8)
station26.save
station27 = Station.new(name: 'Recomendaciones', line_id: 8)
station27.save
station28 = Station.new(name: 'Lista de Referencias', line_id: 8)
station28.save
station29 = Station.new(name: 'Anexos', line_id: 8)
station29.save
station30 = Station.new(name: 'Apéndices', line_id: 8)
station30.save
station31 = Station.new(name: 'Preparación de la defensa', line_id: 9)
station31.save
station32 = Station.new(name: 'Análisis estadístico', line_id: 10)
station32.save
station33 = Station.new(name: 'Análisis cualitativo', line_id: 10)
station33.save
station34 = Station.new(name: 'Diseño de instrumentos', line_id: 10)
station34.save
station35 = Station.new(name: 'Software antiplagio', line_id: 10)
station35.save
station36 = Station.new(name: 'Revisión de redacción y estilo', line_id: 10)
station36.save
station37 = Station.new(name: 'Revisión de normas de cita', line_id: 10)
station37.save
station38 = Station.new(name: 'Revisión de normas de presentación', line_id: 10)
station38.save
