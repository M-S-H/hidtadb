json.array!(@audits) do |audit|
  json.extract! audit, :user_id, :action, :time, :date, :record_id
  json.url audit_url(audit, format: :json)
end
