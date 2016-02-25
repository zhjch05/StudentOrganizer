json.array!(@user_homeworks) do |user_homework|
  json.extract! user_homework, :id, :user_id, :homework_id, :status, :grade, :comment
  json.url user_homework_url(user_homework, format: :json)
end
