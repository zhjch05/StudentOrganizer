json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :name, :due_date, :group_id
  json.url homework_url(homework, format: :json)
end
