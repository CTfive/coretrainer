json.extract! workout, :id, :title, :description, :exercise, :sets, :reps, :lbs, :miles, :notes, :created_at, :updated_at
json.url workout_url(workout, format: :json)
