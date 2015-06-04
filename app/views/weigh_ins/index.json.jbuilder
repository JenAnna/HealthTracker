json.array!(@weigh_ins) do |weigh_in|
  json.extract! weigh_in, :id, :weight, :units
  json.url weigh_in_url(weigh_in, format: :json)
end
