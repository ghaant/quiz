class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy

  def right_answeres_number
    questions.select(&:right?).length
  end

  def questions_number
    questions.count
  end
end
