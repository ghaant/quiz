json.extract! question_response, :id, :text, :question_id, :correct, :created_at, :updated_at
json.url question_response_url(question_response, format: :json)
