json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :teacher_id, :name, :student_name, :email
  json.url teacher_url(teacher, format: :json)
end
