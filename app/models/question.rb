class Question < ApplicationRecord
  belongs_to :quiz
  has_many :question_responses, dependent: :destroy
end
