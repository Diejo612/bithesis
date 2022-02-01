# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Maria', last_name: 'Henriquez', role: 'teacher', email: 'maria@email.com', password: '1234567');

Line.create(name: 'Estación principal');
Line.create(name: 'Idea de la investigación');
Line.create(name: 'Marco teoríco');
