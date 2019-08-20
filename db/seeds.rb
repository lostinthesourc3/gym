# User.destroy_all
# Exercise.destroy_all
# Routine.destroy_all
# GroupClass.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Exercise.create(type_of: "idk", name: "burpees", youtube_link: "some link", description: "description", barbell?: false, weight: 0)
# Exercise.create(type_of: "idk", name: "push-ups", youtube_link: "some link", description: "description", barbell?: false, weight: 0)
# Exercise.create(type_of: "idk", name: "overhead claps", youtube_link: "some link", description: "description", barbell?: false, weight: 0)
# Exercise.create(type_of: "idk", name: "mf", youtube_link: "some link", description: "description", barbell?: false, weight: 0)




Exercise.create(type_of: "chest", name: "bench press", youtube_link: "URL", description: "description", barbell?: true, weight: 0)
Exercise.create(type_of: "chest", name: "push-ups", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "chest", name: "fly", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "full body", name: "squat", youtube_link: "URL", description: "description", barbell?: true, weight: 0)
Exercise.create(type_of: "full body", name: "deadlift", youtube_link: "URL", description: "description", barbell?: true, weight: 0)
Exercise.create(type_of: "back", name: "seated row", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "back", name: "barbell row", youtube_link: "URL", description: "description", barbell?: true, weight: 0)
Exercise.create(type_of: "shoulder", name: "overhead press", youtube_link: "URL", description: "description", barbell?: true, weight: 0)
Exercise.create(type_of: "shoulder", name: "shrugs", youtube_link: "URL", description: "description", barbell?: true, weight: 0)
Exercise.create(type_of: "arm", name: "curls", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "arm", name: "tricep extensions", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "arm", name: "pull-ups", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "leg", name: "forward lunge", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "leg", name: "calf raises", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "abs", name: "crunches", youtube_link: "URL", description: "description", barbell?: false, weight: 0)
Exercise.create(type_of: "abs", name: "sit-ups", youtube_link: "URL", description: "description", barbell?: false, weight: 0)





GroupClass.create(name: "Zumba", description: "dance", instructor: "Dora the Explorer")