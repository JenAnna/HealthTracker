# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



ExerciseType.create(description: "Aerobics", calories_burned_per_minute: 8)

ExerciseType.create(description: "Aerobics, Low Impact", calories_burned_per_minute: 6)

ExerciseType.create(description: "Calisthenics, light", calories_burned_per_minute: 4)

ExerciseType.create(description: "Calisthenics, fast", calories_burned_per_minute: 10)

ExerciseType.create(description: "Cycling", calories_burned_per_minute: 10)

ExerciseType.create(description: "Walking", calories_burned_per_minute: 3.5)

ExerciseType.create(description: "Yoga", calories_burned_per_minute: 2)
