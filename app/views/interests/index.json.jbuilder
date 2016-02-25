json.array!(@interests) do |interest|
  json.extract! interest, :id, :name, :user_id, :detail
  json.url interest_url(interest, format: :json)
end
