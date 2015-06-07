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

Exercise.create(exercise_type_id: 1, calories_burned: 240, time_in_minutes: 30, description: "running", date: Date.today, user_id: 1)
Exercise.create(exercise_type_id: 2, calories_burned: 60, time_in_minutes: 10, description: "running", date: Date.today, user_id: 1)
Exercise.create(exercise_type_id: 1, calories_burned: 160, time_in_minutes: 20, description: "running", date: Date.today, user_id: 1)
Exercise.create(exercise_type_id: 3, calories_burned: 120, time_in_minutes: 30, description: "running", date: Date.today, user_id: 1)
Exercise.create(exercise_type_id: 4, calories_burned: 100, time_in_minutes: 10, description: "running", date: Date.today - 1.day, user_id: 1)
Exercise.create(exercise_type_id: 4, calories_burned: 200, time_in_minutes: 20, description: "running", date: Date.today - 1.day, user_id: 1)
Exercise.create(exercise_type_id: 7, calories_burned: 60, time_in_minutes: 30, description: "running", date: Date.today - 2.days, user_id: 1)
Exercise.create(exercise_type_id: 7, calories_burned: 20, time_in_minutes: 10, description: "running", date: Date.today - 2.days, user_id: 1)
Exercise.create(exercise_type_id: 1, calories_burned: 160, time_in_minutes: 20, description: "running", date: Date.today - 2.days, user_id: 1)

CalorieIntake.create(calories: 300, date: Date.today, user_id: 1)
CalorieIntake.create(calories: 400, date: Date.today, user_id: 1)
CalorieIntake.create(calories: 350, date: Date.today, user_id: 1)
CalorieIntake.create(calories: 800, date: Date.today - 1.day, user_id: 1)
CalorieIntake.create(calories: 300, date: Date.today - 1.day, user_id: 1)
CalorieIntake.create(calories: 200, date: Date.today - 1.day, user_id: 1)
CalorieIntake.create(calories: 450, date: Date.today - 2.days, user_id: 1)
CalorieIntake.create(calories: 500, date: Date.today - 2.days, user_id: 1)
CalorieIntake.create(calories: 100, date: Date.today - 2.days, user_id: 1)

PedometerReading.create(steps: 1000, calories_burned: 50, date: Date.today, user_id: 1)
PedometerReading.create(steps: 5000, calories_burned: 50, date: Date.today, user_id: 1)
PedometerReading.create(steps: 2000, calories_burned: 50, date: Date.today - 1.day, user_id: 1)
PedometerReading.create(steps: 8000, calories_burned: 50, date: Date.today - 1.day, user_id: 1)
PedometerReading.create(steps: 10000, calories_burned: 50, date: Date.today - 2.days, user_id: 1)

WeighIn.create(weight: 120, units: "pounds", date: Date.today, user_id: 1)
WeighIn.create(weight: 125, units: "pounds", date: Date.today - 1.day, user_id: 1)
WeighIn.create(weight: 118, units: "pounds", date: Date.today - 2.days, user_id: 1)

User.create(first_name: "Susan", last_name: "Smith", security_key: "726272cb06eeef96ca8b4ce5109a332e")




Exercise.create(exercise_type_id: 1, calories_burned: 280, time_in_minutes: 35, description: "running", date: Date.today, user_id: 2)
Exercise.create(exercise_type_id: 2, calories_burned: 90, time_in_minutes: 15, description: "running", date: Date.today, user_id: 2)
Exercise.create(exercise_type_id: 1, calories_burned: 200, time_in_minutes: 25, description: "running", date: Date.today, user_id: 2)
Exercise.create(exercise_type_id: 3, calories_burned: 140, time_in_minutes: 35, description: "running", date: Date.today, user_id: 2)
Exercise.create(exercise_type_id: 4, calories_burned: 150, time_in_minutes: 15, description: "running", date: Date.today - 1.day, user_id: 2)
Exercise.create(exercise_type_id: 4, calories_burned: 250, time_in_minutes: 25, description: "running", date: Date.today - 1.day, user_id: 2)
Exercise.create(exercise_type_id: 7, calories_burned: 70, time_in_minutes: 35, description: "running", date: Date.today - 2.days, user_id: 2)
Exercise.create(exercise_type_id: 7, calories_burned: 30, time_in_minutes: 15, description: "running", date: Date.today - 2.days, user_id: 2)
Exercise.create(exercise_type_id: 1, calories_burned: 200, time_in_minutes: 25, description: "running", date: Date.today - 2.days, user_id: 2)

CalorieIntake.create(calories: 400, date: Date.today, user_id: 2)
CalorieIntake.create(calories: 500, date: Date.today, user_id: 2)
CalorieIntake.create(calories: 450, date: Date.today, user_id: 2)
CalorieIntake.create(calories: 900, date: Date.today - 1.day, user_id: 2)
CalorieIntake.create(calories: 400, date: Date.today - 1.day, user_id: 2)
CalorieIntake.create(calories: 300, date: Date.today - 1.day, user_id: 2)
CalorieIntake.create(calories: 550, date: Date.today - 2.days, user_id: 2)
CalorieIntake.create(calories: 600, date: Date.today - 2.days, user_id: 2)
CalorieIntake.create(calories: 200, date: Date.today - 2.days, user_id: 2)

PedometerReading.create(steps: 1200, calories_burned: 60, date: Date.today, user_id: 2)
PedometerReading.create(steps: 5200, calories_burned: 260, date: Date.today, user_id: 2)
PedometerReading.create(steps: 2200, calories_burned: 110, date: Date.today - 1.day, user_id: 2)
PedometerReading.create(steps: 8200, calories_burned: 410, date: Date.today - 1.day, user_id: 2)
PedometerReading.create(steps: 12000, calories_burned: 600, date: Date.today - 2.days, user_id: 2)

WeighIn.create(weight: 180, units: "pounds", date: Date.today, user_id: 2)
WeighIn.create(weight: 175, units: "pounds", date: Date.today - 1.day, user_id: 2)
WeighIn.create(weight: 178, units: "pounds", date: Date.today - 2.days, user_id: 2)

User.create(first_name: "Rick", last_name: "Smith", security_key: "726272cb06eeef96ca8b4ce5109a332e")
