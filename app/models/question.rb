class Question < ApplicationRecord
  belongs_to :quiz
  has_many :question_responses, dependent: :destroy

  validates :text, presence: true

  def right?
    responses_count == right_responses_count
  end

  private

  def responses_count
    question_responses.count
  end

  def right_responses_count
    question_responses.select(&:right?).length
  end
end
