# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['BE','BTech','BCA','MCA','ME','MTech'].each do |i|
  Degree.create(name: i)
end

['Java','Dotnet','PHP','ROR','Nodejs','Vuejs'].each do |i|
  Skill.create(name: i)
end
