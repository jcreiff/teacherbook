# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Teacher.create!(name: "Seedy McSeeds", email: "seedy@seeds.seed", password: "seeds")

4.times do
  Teacher.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "seeds")
end

ids = Teacher.all.map {|t| t.id}

50.times do
  Parent.create!(name: Faker::Name.name, email: Faker::Internet.email,
      student_name: Faker::Name.name, teacher_id: ids.sample)
end
