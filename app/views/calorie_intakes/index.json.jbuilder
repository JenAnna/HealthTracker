json.array!(@calorie_intakes) do |calorie_intake|
  json.extract! calorie_intake, :id, :calories
  json.url calorie_intake_url(calorie_intake, format: :json)
end
