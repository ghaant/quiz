class Question < ApplicationRecord
  belongs_to :quiz
  has_many :question_responses, dependent: :destroy

  def right?
    question_responses.count == question_responses.select(&:right?).length
  end
end
