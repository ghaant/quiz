json.extract! user_response, :id, :question_id, :question_response_id, :created_at, :updated_at
json.url user_response_url(user_response, format: :json)
