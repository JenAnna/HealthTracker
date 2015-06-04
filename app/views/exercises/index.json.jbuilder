json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exercise_type_id, :calories_burned, :time_in_minutes, :description, :date
  json.url exercise_url(exercise, format: :json)
end
