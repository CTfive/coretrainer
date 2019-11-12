json.extract! session, :id, :title, :description, :exercises, :sets, :reps, :notes, :created_at, :updated_at
json.url session_url(session, format: :json)
