json.array!(@jobs) do |job|
  json.extract! job, :id, :user_id, :title, :company, :company_url, :description, :location
  json.url job_url(job, format: :json)
end
