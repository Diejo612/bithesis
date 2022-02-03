require 'open-uri'

puts 'Creando avatar'
avatar = URI.open('https://images.unsplash.com/photo-1631203928493-a4e4eb2b8da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')

puts 'Creando Usuarios'
User.create(first_name: 'Maria', last_name: 'Henriquez', role: 'teacher', email: 'maria@email.com', password: '1234567').photo.attach(io: avatar, filename: 'avatar.png', content_type: 'image/png');
User.create(first_name: 'Mel', last_name: 'Valle', role: 'student', email: 'mel@email.com', password: '1234567')
User.create(first_name: 'Jhon', last_name: 'Figueroa', role: 'student', email: 'jh@email.com', password: '1234567')
User.create(first_name: 'Jean', last_name: 'Pier', role: 'student', email: 'jean_piere@email.com', password: '1234567')

puts 'Creando Lines'
Line.create(name: 'Linea principal')
Line.create(name: 'Idea de la investigación')
Line.create(name: 'Marco teoríco')
Line.create(name: 'El problema')
Line.create(name: 'Marco metodologico')
Line.create(name: 'Resultados de la investigación')
Line.create(name: 'Diseño de la investigación')
Line.create(name: 'Finales')
Line.create(name: 'Defensa de tesis')
Line.create(name: 'Estación servicios adicionales')

puts 'Creando station'
station1 = Station.new( name: 'Villa Eucaliptos', line_id: 1)
station1.save
