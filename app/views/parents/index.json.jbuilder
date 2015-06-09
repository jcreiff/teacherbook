json.array!(@parents) do |parent|
  json.extract! parent, :id, :teacher_id, :name, :student_name, :email
  json.url parent_url(parent, format: :json)
end
