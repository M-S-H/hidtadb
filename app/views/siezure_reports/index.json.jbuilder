json.array!(@siezure_reports) do |siezure_report|
  json.extract! siezure_report, 
  json.url siezure_report_url(siezure_report, format: :json)
end
