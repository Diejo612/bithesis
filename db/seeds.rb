# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

avatar = URI.open('https://images.unsplash.com/photo-1631203928493-a4e4eb2b8da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')

User.create(first_name: 'Maria', last_name: 'Henriquez', role: 'teacher', email: 'maria@email.com', password: '1234567').photo.attach(io: avatar, filename: 'avatar.png', content_type: 'image/png');

Line.create(name: 'Estación principal');
Line.create(name: 'Idea de la investigación');
Line.create(name: 'Marco teoríco');
