json.array!(@subjects) do |subject|
  json.extract! subject, :name, :dob, :ssn, :oln, :gender, :address, :city, :state, :zip, :passanger, :misc, :citizenship, :siezure_report_id
  json.url subject_url(subject, format: :json)
end
