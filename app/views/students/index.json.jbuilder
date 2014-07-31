json.array!(@students) do |student|
  json.extract! student, :id, :github_name, :repository, :last_commit
  json.url student_url(student, format: :json)
end
