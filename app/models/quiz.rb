class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy

  validates :title, presence: true

  def right_answeres_number
    questions.select(&:right?).length
  end

  def questions_number
    questions.count
  end
end
