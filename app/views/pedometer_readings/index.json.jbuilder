json.array!(@pedometer_readings) do |pedometer_reading|
  json.extract! pedometer_reading, :id, :steps
  json.url pedometer_reading_url(pedometer_reading, format: :json)
end
