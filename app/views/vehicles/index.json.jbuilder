json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :make, :model, :year, :plate, :state, :color, :owner, :siezure_report_id, :subject_id
  json.url vehicle_url(vehicle, format: :json)
end
