json.array!(@audits) do |audit|
  json.extract! audit, 
  json.url audit_url(audit, format: :json)
end
