json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :user_id, :percentage, :due_date, :diagram_id
  json.url task_url(task, format: :json)
end
