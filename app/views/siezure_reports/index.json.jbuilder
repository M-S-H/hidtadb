json.array!(@siezure_reports) do |siezure_report|
  json.extract! siezure_report, :taskforce, :agency, :casenum, :cjis, :initiative, :siezuredate, :siezuretime, :siezuretype, :hheop, :road, :mile_marker, :direction, :address, :city, :country, :state, :zip, :narrative, :analytical, :concealment_method, :false_compartment, :compartment_location, :cargo_state_type, :k9used, :lab_stash_house, :poc, :pocphone
  json.url siezure_report_url(siezure_report, format: :json)
end
