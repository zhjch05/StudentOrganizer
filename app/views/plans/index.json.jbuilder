json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :user_id, :term, :estimated_time
  json.url plan_url(plan, format: :json)
end
