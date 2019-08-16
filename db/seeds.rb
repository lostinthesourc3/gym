# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(name: "Max", age: 22, weight: 185, weight_goal: 200, height_inch: 72, sex: "m")
User.create(name: "Alice", age: 29, weight: 150, weight_goal: 120, height_inch: 63, sex: "f")

Exercise.create(type_of: "idk", name: "burpees", youtube_link: "some link", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "idk", name: "push-ups", youtube_link: "some link", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "idk", name: "overhead claps", youtube_link: "some link", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "idk", name: "mf", youtube_link: "some link", description: "description", barbell?: false, weight: 0)

Routine.create(name: "monday", user_id: 1, exercise_id: 2)
Routine.create(name: "tuesday", user_id: 2, exercise_id: 4)

GroupClass.create(name: "Zumba", description: "dance", instructor: "Dora the Explorer")