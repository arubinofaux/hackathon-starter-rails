json.array!(@events) do |event|
  json.extract! event, :id, :user_id, :organizer, :title, :type, :date, :location, :description
  json.url event_url(event, format: :json)
end
