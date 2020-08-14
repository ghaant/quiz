class UserResponse < ApplicationRecord
  belongs_to :question
  belongs_to :question_response
end
