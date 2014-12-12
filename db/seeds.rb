# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |x|
  Story.create!(title: Faker::Name.name,
                user_text: Faker::Lorem.
                )
end


5.times do |x|
  Chapter.create!(user_text: Faker::Lorem.paragraph
                 )
end

5.times do |x|
  Option.create!()
end