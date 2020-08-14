json.extract! quiz, :id, :title, :finished, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
