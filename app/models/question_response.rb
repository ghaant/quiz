class QuestionResponse < ApplicationRecord
  belongs_to :question
  has_one :user_response
end
